// Float64 configuration constants
private let DOUBLE_MANTISSA_BITS: Int32 = 52
private let DOUBLE_BIAS: Int32 = 1023
private let DOUBLE_POW5_INV_BITCOUNT: Int32 = 125
private let DOUBLE_POW5_BITCOUNT: Int32 = 125

import Foundation

func float64ToString(_ d: Float64) -> String {
    let bits = d.bitPattern
    
    let sign = (bits >> 63) != 0
    let ieeeMantissa = bits & 0xFFFFFFFFFFFFF
    let ieeeExponent = Int32((bits >> 52) & 0x7FF)
    
    if ieeeExponent == 2047 {
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
        e2 = 1 - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2
        m2 = ieeeMantissa
    } else {
        e2 = ieeeExponent - DOUBLE_BIAS - DOUBLE_MANTISSA_BITS - 2
        m2 = (1 << DOUBLE_MANTISSA_BITS) | ieeeMantissa
    }
    
    let even = (m2 & 1) == 0
    let acceptBounds = even
    
    let mv = m2 * 4
    let mp = mv + 2
    var mmShift: UInt64 = 0
    if ieeeMantissa != 0 || ieeeExponent <= 1 {
        mmShift = 1
    }
    let mm = mv - 1 - mmShift
    
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
        let k = DOUBLE_POW5_INV_BITCOUNT + pow5bits(e: q) - 1
        let i = -e2 + q + k
        
        vr = mulShift64(m: mv, mul: DOUBLE_POW5_INV_SPLIT[Int(q)], shift: i)
        vp = mulShift64(m: mp, mul: DOUBLE_POW5_INV_SPLIT[Int(q)], shift: i)
        vm = mulShift64(m: mm, mul: DOUBLE_POW5_INV_SPLIT[Int(q)], shift: i)
        
        if q != 0 && (vp - 1) / 10 <= vm / 10 {
            let l = DOUBLE_POW5_INV_BITCOUNT + pow5bits(e: q - 1) - 1
            lastDigit = mulShift64(m: mv, mul: DOUBLE_POW5_INV_SPLIT[Int(q - 1)], shift: -e2 + q - 1 + l) % 10
        }
        
        if q <= 21 {
            if mv % 5 == 0 {
                vrIsTrailingZeros = multipleOfPowerOf5_64(value: mv, q: q)
            } else if acceptBounds {
                vmIsTrailingZeros = multipleOfPowerOf5_64(value: mm, q: q)
            } else {
                if multipleOfPowerOf5_64(value: mp, q: q) {
                    vp -= 1
                }
            }
        }
    } else {
        let q = log10Pow5(e: -e2)
        e10 = q + e2
        let i = -e2 - q
        let k = pow5bits(e: i) - DOUBLE_POW5_BITCOUNT
        let j = q - k
        
        // Bounds check
        if Int(i) >= DOUBLE_POW5_SPLIT.count {
            print("ERROR: i=\(i) >= DOUBLE_POW5_SPLIT.count=\(DOUBLE_POW5_SPLIT.count), e2=\(e2)")
            return "ERROR"
        }
        
        vr = mulShift64(m: mv, mul: DOUBLE_POW5_SPLIT[Int(i)], shift: j)
        vp = mulShift64(m: mp, mul: DOUBLE_POW5_SPLIT[Int(i)], shift: j)
        vm = mulShift64(m: mm, mul: DOUBLE_POW5_SPLIT[Int(i)], shift: j)
        
        if q != 0 && (vp - 1) / 10 <= vm / 10 {
            let j2 = q - 1 - (pow5bits(e: i + 1) - DOUBLE_POW5_BITCOUNT)
            lastDigit = mulShift64(m: mv, mul: DOUBLE_POW5_SPLIT[Int(i + 1)], shift: j2) % 10
        }
        
        if q <= 1 {
            vrIsTrailingZeros = true
            if acceptBounds {
                vmIsTrailingZeros = mmShift == 1
            } else {
                vp -= 1
            }
        } else if q < 63 {
            vrIsTrailingZeros = multipleOfPowerOf2_64(value: mv, q: q - 1)
            if acceptBounds {
                vmIsTrailingZeros = multipleOfPowerOf5_64(value: mm, q: q)
            } else {
                if multipleOfPowerOf5_64(value: mp, q: q) {
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