import Foundation

func pow5bits(e: Int32) -> Int32 {
    return e * 1217359 / 524288 + 1
}

func log10Pow2(e: Int32) -> Int32 {
    return e * 78913 / 262144
}

func log10Pow5(e: Int32) -> Int32 {
    return e * 732923 / 1048576
}

func decimalLength17(v: UInt64) -> Int32 {
    if v >= 10000000000000000 { return 17 }
    if v >= 1000000000000000 { return 16 }
    if v >= 100000000000000 { return 15 }
    if v >= 10000000000000 { return 14 }
    if v >= 1000000000000 { return 13 }
    if v >= 100000000000 { return 12 }
    if v >= 10000000000 { return 11 }
    if v >= 1000000000 { return 10 }
    if v >= 100000000 { return 9 }
    if v >= 10000000 { return 8 }
    if v >= 1000000 { return 7 }
    if v >= 100000 { return 6 }
    if v >= 10000 { return 5 }
    if v >= 1000 { return 4 }
    if v >= 100 { return 3 }
    if v >= 10 { return 2 }
    return 1
}

func mulShift32(m: UInt64, factor: UInt64, shift: Int32) -> UInt64 {
    let factorLo = factor & 0xFFFFFFFF
    let factorHi = factor >> 32
    let bits0 = m &* factorLo
    let bits1 = m &* factorHi
    let sumVal = (bits0 >> 32) &+ bits1
    return (sumVal >> (shift - 32)) & 0xFFFFFFFF
}

func mulShift64(m: UInt64, mul: [UInt64], shift: Int32) -> UInt64 {
    let (hi0, _) = umul128(a: m, b: mul[0])
    let (hi2, lo2) = umul128(a: m, b: mul[1])
    
    let sumLo = lo2 &+ hi0
    let carry: UInt64 = sumLo < lo2 ? 1 : 0
    let sumHi = hi2 &+ carry
    
    let shiftAmount = shift - 64
    if shiftAmount >= 128 { return 0 }
    if shiftAmount >= 64 { return sumHi >> (shiftAmount - 64) }
    if shiftAmount == 0 { return sumLo }
    return (sumHi << (64 - shiftAmount)) | (sumLo >> shiftAmount)
}

func umul128(a: UInt64, b: UInt64) -> (UInt64, UInt64) {
    let aLo = a & 0xFFFFFFFF
    let aHi = a >> 32
    let bLo = b & 0xFFFFFFFF
    let bHi = b >> 32
    
    let ll = aLo &* bLo
    let lh = aLo &* bHi
    let hl = aHi &* bLo
    let hh = aHi &* bHi
    
    let mid = lh &+ hl
    let overflow: UInt64 = mid < lh ? 1 : 0
    
    let hi = hh &+ (mid >> 32) &+ overflow
    let lo = ll &+ ((mid & 0xFFFFFFFF) << 32)
    let hiFinal = lo < ll ? hi &+ 1 : hi
    
    return (hiFinal, lo)
}

func multipleOfPowerOf5_64(value: UInt64, q: Int32) -> Bool {
    if q == 0 { return true }
    if q >= 64 { return value == 0 }
    var pow5: UInt64 = 5
    let qInt = Int(q)
    for _ in 1..<qInt { pow5 = pow5 &* 5 }
    return (value % pow5) == 0
}

func multipleOfPowerOf2_64(value: UInt64, q: Int32) -> Bool {
    if q == 0 { return true }
    if q >= 64 { return value == 0 }
    let qInt = Int(q)
    return (value & ((1 << qInt) - 1)) == 0
}