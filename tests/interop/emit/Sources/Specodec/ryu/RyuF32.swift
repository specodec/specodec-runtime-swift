// Float32 configuration constants
private let FLOAT_MANTISSA_BITS: Int32 = 23
private let FLOAT_BIAS: Int32 = 127
private let FLOAT_POW5_INV_BITCOUNT: Int32 = 59
private let FLOAT_POW5_BITCOUNT: Int32 = 61

import Foundation

func float32ToString(_ f: Float32) -> String {
    let bits = f.bitPattern
    
    let sign = (bits >> 31) != 0
    let ieeeMantissa = bits & 0x7FFFFF
    let ieeeExponent = (bits >> 23) & 0xFF
    
    if ieeeExponent == 255 {
        if ieeeMantissa == 0 {
            return sign ? "-Infinity" : "Infinity"
        }
        return "NaN"
    }
    if ieeeExponent == 0 && ieeeMantissa == 0 {
        return sign ? "-0E0" : "0E0"
    }
    
    var e2: Int32
    var m2: UInt64
    if ieeeExponent == 0 {
        e2 = 1 - FLOAT_BIAS - FLOAT_MANTISSA_BITS - 2
        m2 = UInt64(ieeeMantissa)
    } else {
        e2 = Int32(ieeeExponent) - FLOAT_BIAS - FLOAT_MANTISSA_BITS - 2
        m2 = UInt64((1 << FLOAT_MANTISSA_BITS) | ieeeMantissa)
    }
    
    let even = (m2 & 1) == 0
    let acceptBounds = even
    
    let mv = m2 * 4
    let mp = mv + 2
    var mmShift: Int32 = 0
    if ieeeMantissa != 0 || ieeeExponent <= 1 {
        mmShift = 1
    }
    let mm = mv - 1 - UInt64(mmShift)
    
    var vrIsTrailingZeros = false
    var vmIsTrailingZeros = false
    var lastDigit: UInt64 = 0
    var e10: Int32
    var vr: UInt64
    var vp: UInt64
    var vm: UInt64
    
    if e2 >= 0 {
        let q = log10Pow2(e: e2)
        e10 = q
        let k = FLOAT_POW5_INV_BITCOUNT + pow5bits(e: q) - 1
        let i = -e2 + q + k
        
        vr = mulShift32(m: mv, factor: FLOAT_POW5_INV_SPLIT[Int(q)] + 1, shift: i)
        vp = mulShift32(m: mp, factor: FLOAT_POW5_INV_SPLIT[Int(q)] + 1, shift: i)
        vm = mulShift32(m: mm, factor: FLOAT_POW5_INV_SPLIT[Int(q)] + 1, shift: i)
        
        if q != 0 && (vp - 1) / 10 <= vm / 10 {
            let l = FLOAT_POW5_INV_BITCOUNT + pow5bits(e: q - 1) - 1
            lastDigit = mulShift32(m: mv, factor: FLOAT_POW5_INV_SPLIT[Int(q - 1)] + 1, shift: -e2 + q - 1 + l) % 10
        }
        
        if q <= 9 {
            if mv % 5 == 0 {
                vrIsTrailingZeros = multipleOfPowerOf5_32(value: UInt32(mv), q: q)
            } else if acceptBounds {
                vmIsTrailingZeros = multipleOfPowerOf5_32(value: UInt32(mm), q: q)
            } else {
                if multipleOfPowerOf5_32(value: UInt32(mp), q: q) {
                    vp -= 1
                }
            }
        }
    } else {
        let q = log10Pow5(e: -e2)
        e10 = q + e2
        let i = -e2 - q
        let k = pow5bits(e: i) - FLOAT_POW5_BITCOUNT
        let j = q - k
        
        vr = mulShift32(m: mv, factor: FLOAT_POW5_SPLIT[Int(i)], shift: j)
        vp = mulShift32(m: mp, factor: FLOAT_POW5_SPLIT[Int(i)], shift: j)
        vm = mulShift32(m: mm, factor: FLOAT_POW5_SPLIT[Int(i)], shift: j)
        
        if q != 0 && (vp - 1) / 10 <= vm / 10 {
            let j2 = q - 1 - (pow5bits(e: i + 1) - FLOAT_POW5_BITCOUNT)
            lastDigit = mulShift32(m: mv, factor: FLOAT_POW5_SPLIT[Int(i + 1)], shift: j2) % 10
        }
        
        if q <= 1 {
            vrIsTrailingZeros = true
            if acceptBounds {
                vmIsTrailingZeros = mmShift == 1
            } else {
                vp -= 1
            }
        } else if q < 31 {
            vrIsTrailingZeros = multipleOfPowerOf2_32(value: UInt32(mv), q: q - 1)
            if acceptBounds {
                vmIsTrailingZeros = multipleOfPowerOf5_32(value: UInt32(mm), q: q)
            } else {
                if multipleOfPowerOf5_32(value: UInt32(mp), q: q) {
                    vp -= 1
                }
            }
        }
    }
    
    var removed: Int32 = 0
    var vr2 = vr
    var vp2 = vp
    var vm2 = vm
    
    if vmIsTrailingZeros || vrIsTrailingZeros {
        while vp2 / 10 > vm2 / 10 {
            vmIsTrailingZeros = vmIsTrailingZeros && (vm2 % 10 == 0)
            vrIsTrailingZeros = vrIsTrailingZeros && (lastDigit == 0)
            lastDigit = vr2 % 10
            vr2 /= 10
            vp2 /= 10
            vm2 /= 10
            removed += 1
        }
        
        if vmIsTrailingZeros {
            while vm2 % 10 == 0 {
                vrIsTrailingZeros = vrIsTrailingZeros && (lastDigit == 0)
                lastDigit = vr2 % 10
                vr2 /= 10
                vp2 /= 10
                vm2 /= 10
                removed += 1
            }
        }
        
        if vrIsTrailingZeros && lastDigit == 5 && (vr2 & 1) == 0 {
            lastDigit = 4
        }
        
        let roundUp = (vr2 == vm2 && (!acceptBounds || !vmIsTrailingZeros)) || lastDigit >= 5
        var output = vr2
        if roundUp {
            output += 1
        }
        let exp = e10 + removed
        let olength = decimalLength17(v: output)
        
        var result = ""
        if sign { result = "-" }
        let digits = String(output)
        if olength == 1 {
            result += digits
        } else {
            result += String(digits[digits.startIndex]) + "." + String(digits.dropFirst())
        }
        result += "E" + String(exp + olength - 1)
        return result
    } else {
        while vp2 / 10 > vm2 / 10 {
            lastDigit = vr2 % 10
            vr2 /= 10
            vp2 /= 10
            vm2 /= 10
            removed += 1
        }
        
        var output = vr2
        if vr2 == vm2 || lastDigit >= 5 {
            output += 1
        }
        let exp = e10 + removed
        let olength = decimalLength17(v: output)
        
        var result = ""
        if sign { result = "-" }
        let digits = String(output)
        if olength == 1 {
            result += digits
        } else {
            result += String(digits[digits.startIndex]) + "." + String(digits.dropFirst())
        }
        result += "E" + String(exp + olength - 1)
        return result
    }
}