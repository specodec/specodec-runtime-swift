import Foundation
import Specodec

func testScalar_int8_min() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int8_min.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int8_min.mp"))
        return true
    } catch {
        print("FAIL int8_min (scalar): \(error)")
        return false
    }
}

func testScalar_int8_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int8_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int8_max.mp"))
        return true
    } catch {
        print("FAIL int8_max (scalar): \(error)")
        return false
    }
}

func testScalar_int16_min() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int16_min.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int16_min.mp"))
        return true
    } catch {
        print("FAIL int16_min (scalar): \(error)")
        return false
    }
}

func testScalar_int16_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int16_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int16_max.mp"))
        return true
    } catch {
        print("FAIL int16_max (scalar): \(error)")
        return false
    }
}

func testScalar_int32_min() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int32_min.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int32_min.mp"))
        return true
    } catch {
        print("FAIL int32_min (scalar): \(error)")
        return false
    }
}

func testScalar_int32_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int32_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt32()
        var w = MsgPackWriter()
        w.writeInt32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int32_max.mp"))
        return true
    } catch {
        print("FAIL int32_max (scalar): \(error)")
        return false
    }
}

func testScalar_int64_min() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int64_min.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt64()
        var w = MsgPackWriter()
        w.writeInt64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int64_min.mp"))
        return true
    } catch {
        print("FAIL int64_min (scalar): \(error)")
        return false
    }
}

func testScalar_int64_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/int64_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readInt64()
        var w = MsgPackWriter()
        w.writeInt64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/int64_max.mp"))
        return true
    } catch {
        print("FAIL int64_max (scalar): \(error)")
        return false
    }
}

func testScalar_uint8_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/uint8_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readUint32()
        var w = MsgPackWriter()
        w.writeUint32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/uint8_max.mp"))
        return true
    } catch {
        print("FAIL uint8_max (scalar): \(error)")
        return false
    }
}

func testScalar_uint16_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/uint16_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readUint32()
        var w = MsgPackWriter()
        w.writeUint32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/uint16_max.mp"))
        return true
    } catch {
        print("FAIL uint16_max (scalar): \(error)")
        return false
    }
}

func testScalar_uint32_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/uint32_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readUint32()
        var w = MsgPackWriter()
        w.writeUint32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/uint32_max.mp"))
        return true
    } catch {
        print("FAIL uint32_max (scalar): \(error)")
        return false
    }
}

func testScalar_uint64_max() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/uint64_max.mp"))
        var r = MsgPackReader(data)
        let v = try r.readUint64()
        var w = MsgPackWriter()
        w.writeUint64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/uint64_max.mp"))
        return true
    } catch {
        print("FAIL uint64_max (scalar): \(error)")
        return false
    }
}

func testScalar_float32_1_5() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float32_1.5.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat32()
        var w = MsgPackWriter()
        w.writeFloat32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float32_1.5.mp"))
        return true
    } catch {
        print("FAIL float32_1.5 (scalar): \(error)")
        return false
    }
}

func testScalar_float32_neg_zero() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float32_neg_zero.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat32()
        var w = MsgPackWriter()
        w.writeFloat32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float32_neg_zero.mp"))
        return true
    } catch {
        print("FAIL float32_neg_zero (scalar): \(error)")
        return false
    }
}

func testScalar_float32_inf() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float32_inf.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat32()
        var w = MsgPackWriter()
        w.writeFloat32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float32_inf.mp"))
        return true
    } catch {
        print("FAIL float32_inf (scalar): \(error)")
        return false
    }
}

func testScalar_float32_neg_inf() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float32_neg_inf.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat32()
        var w = MsgPackWriter()
        w.writeFloat32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float32_neg_inf.mp"))
        return true
    } catch {
        print("FAIL float32_neg_inf (scalar): \(error)")
        return false
    }
}

func testScalar_float32_nan() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float32_nan.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat32()
        var w = MsgPackWriter()
        w.writeFloat32(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float32_nan.mp"))
        return true
    } catch {
        print("FAIL float32_nan (scalar): \(error)")
        return false
    }
}

func testScalar_float64_pi() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float64_pi.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat64()
        var w = MsgPackWriter()
        w.writeFloat64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float64_pi.mp"))
        return true
    } catch {
        print("FAIL float64_pi (scalar): \(error)")
        return false
    }
}

func testScalar_float64_neg_zero() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float64_neg_zero.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat64()
        var w = MsgPackWriter()
        w.writeFloat64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float64_neg_zero.mp"))
        return true
    } catch {
        print("FAIL float64_neg_zero (scalar): \(error)")
        return false
    }
}

func testScalar_float64_inf() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float64_inf.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat64()
        var w = MsgPackWriter()
        w.writeFloat64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float64_inf.mp"))
        return true
    } catch {
        print("FAIL float64_inf (scalar): \(error)")
        return false
    }
}

func testScalar_float64_neg_inf() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float64_neg_inf.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat64()
        var w = MsgPackWriter()
        w.writeFloat64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float64_neg_inf.mp"))
        return true
    } catch {
        print("FAIL float64_neg_inf (scalar): \(error)")
        return false
    }
}

func testScalar_float64_nan() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/float64_nan.mp"))
        var r = MsgPackReader(data)
        let v = try r.readFloat64()
        var w = MsgPackWriter()
        w.writeFloat64(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/float64_nan.mp"))
        return true
    } catch {
        print("FAIL float64_nan (scalar): \(error)")
        return false
    }
}

func testScalar_str_empty() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_empty.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_empty.mp"))
        return true
    } catch {
        print("FAIL str_empty (scalar): \(error)")
        return false
    }
}

func testScalar_str_ascii() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_ascii.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_ascii.mp"))
        return true
    } catch {
        print("FAIL str_ascii (scalar): \(error)")
        return false
    }
}

func testScalar_str_null_byte() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_null_byte.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_null_byte.mp"))
        return true
    } catch {
        print("FAIL str_null_byte (scalar): \(error)")
        return false
    }
}

func testScalar_str_escape() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_escape.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_escape.mp"))
        return true
    } catch {
        print("FAIL str_escape (scalar): \(error)")
        return false
    }
}

func testScalar_str_unicode() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_unicode.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_unicode.mp"))
        return true
    } catch {
        print("FAIL str_unicode (scalar): \(error)")
        return false
    }
}

func testScalar_str_31() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_31.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_31.mp"))
        return true
    } catch {
        print("FAIL str_31 (scalar): \(error)")
        return false
    }
}

func testScalar_str_32() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_32.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_32.mp"))
        return true
    } catch {
        print("FAIL str_32 (scalar): \(error)")
        return false
    }
}

func testScalar_str_255() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_255.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_255.mp"))
        return true
    } catch {
        print("FAIL str_255 (scalar): \(error)")
        return false
    }
}

func testScalar_str_256() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/str_256.mp"))
        var r = MsgPackReader(data)
        let v = try r.readString()
        var w = MsgPackWriter()
        w.writeString(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/str_256.mp"))
        return true
    } catch {
        print("FAIL str_256 (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_empty() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_empty.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_empty.mp"))
        return true
    } catch {
        print("FAIL bytes_empty (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_small() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_small.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_small.mp"))
        return true
    } catch {
        print("FAIL bytes_small (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_31() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_31.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_31.mp"))
        return true
    } catch {
        print("FAIL bytes_31 (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_32() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_32.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_32.mp"))
        return true
    } catch {
        print("FAIL bytes_32 (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_255() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_255.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_255.mp"))
        return true
    } catch {
        print("FAIL bytes_255 (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_256() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_256.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_256.mp"))
        return true
    } catch {
        print("FAIL bytes_256 (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_zeros() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_zeros.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_zeros.mp"))
        return true
    } catch {
        print("FAIL bytes_zeros (scalar): \(error)")
        return false
    }
}

func testScalar_bytes_ff() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bytes_ff.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBytes()
        var w = MsgPackWriter()
        w.writeBytes(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bytes_ff.mp"))
        return true
    } catch {
        print("FAIL bytes_ff (scalar): \(error)")
        return false
    }
}

func testScalar_bool_true() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bool_true.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBool()
        var w = MsgPackWriter()
        w.writeBool(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bool_true.mp"))
        return true
    } catch {
        print("FAIL bool_true (scalar): \(error)")
        return false
    }
}

func testScalar_bool_false() -> Bool {
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/scalars/bool_false.mp"))
        var r = MsgPackReader(data)
        let v = try r.readBool()
        var w = MsgPackWriter()
        w.writeBool(v)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/scalars/bool_false.mp"))
        return true
    } catch {
        print("FAIL bool_false (scalar): \(error)")
        return false
    }
}


func runScalars(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    if testScalar_int8_min() { passed += 1 } else { failed += 1 }
    if testScalar_int8_max() { passed += 1 } else { failed += 1 }
    if testScalar_int16_min() { passed += 1 } else { failed += 1 }
    if testScalar_int16_max() { passed += 1 } else { failed += 1 }
    if testScalar_int32_min() { passed += 1 } else { failed += 1 }
    if testScalar_int32_max() { passed += 1 } else { failed += 1 }
    if testScalar_int64_min() { passed += 1 } else { failed += 1 }
    if testScalar_int64_max() { passed += 1 } else { failed += 1 }
    if testScalar_uint8_max() { passed += 1 } else { failed += 1 }
    if testScalar_uint16_max() { passed += 1 } else { failed += 1 }
    if testScalar_uint32_max() { passed += 1 } else { failed += 1 }
    if testScalar_uint64_max() { passed += 1 } else { failed += 1 }
    if testScalar_float32_1_5() { passed += 1 } else { failed += 1 }
    if testScalar_float32_neg_zero() { passed += 1 } else { failed += 1 }
    if testScalar_float32_inf() { passed += 1 } else { failed += 1 }
    if testScalar_float32_neg_inf() { passed += 1 } else { failed += 1 }
    if testScalar_float32_nan() { passed += 1 } else { failed += 1 }
    if testScalar_float64_pi() { passed += 1 } else { failed += 1 }
    if testScalar_float64_neg_zero() { passed += 1 } else { failed += 1 }
    if testScalar_float64_inf() { passed += 1 } else { failed += 1 }
    if testScalar_float64_neg_inf() { passed += 1 } else { failed += 1 }
    if testScalar_float64_nan() { passed += 1 } else { failed += 1 }
    if testScalar_str_empty() { passed += 1 } else { failed += 1 }
    if testScalar_str_ascii() { passed += 1 } else { failed += 1 }
    if testScalar_str_null_byte() { passed += 1 } else { failed += 1 }
    if testScalar_str_escape() { passed += 1 } else { failed += 1 }
    if testScalar_str_unicode() { passed += 1 } else { failed += 1 }
    if testScalar_str_31() { passed += 1 } else { failed += 1 }
    if testScalar_str_32() { passed += 1 } else { failed += 1 }
    if testScalar_str_255() { passed += 1 } else { failed += 1 }
    if testScalar_str_256() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_empty() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_small() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_31() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_32() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_255() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_256() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_zeros() { passed += 1 } else { failed += 1 }
    if testScalar_bytes_ff() { passed += 1 } else { failed += 1 }
    if testScalar_bool_true() { passed += 1 } else { failed += 1 }
    if testScalar_bool_false() { passed += 1 } else { failed += 1 }
    return (passed, failed)
}
