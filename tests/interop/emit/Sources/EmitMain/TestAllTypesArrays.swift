import Foundation
import Specodec

func testModel_ArrString() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrString.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrStringCodec.decode(r)
        var w = MsgPackWriter()
        ArrStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrString.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrString msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrString.json"))
        var r = JsonReader(data)
        let obj = try ArrStringCodec.decode(r)
        var w = JsonWriter()
        ArrStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrString.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrString json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrString.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrStringCodec.decode(r)
        var w = JsonWriter()
        ArrStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrString.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrString unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrString.gron"))
        var r = GronReader(data)
        let obj = try ArrStringCodec.decode(r)
        var w = GronWriter()
        ArrStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrString.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrString gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrInt32Codec.decode(r)
        var w = MsgPackWriter()
        ArrInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt32.json"))
        var r = JsonReader(data)
        let obj = try ArrInt32Codec.decode(r)
        var w = JsonWriter()
        ArrInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrInt32Codec.decode(r)
        var w = JsonWriter()
        ArrInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt32.gron"))
        var r = GronReader(data)
        let obj = try ArrInt32Codec.decode(r)
        var w = GronWriter()
        ArrInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrBoolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBoolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrBooleanCodec.decode(r)
        var w = MsgPackWriter()
        ArrBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBoolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrBoolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBoolean.json"))
        var r = JsonReader(data)
        let obj = try ArrBooleanCodec.decode(r)
        var w = JsonWriter()
        ArrBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBoolean.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrBoolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBoolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrBooleanCodec.decode(r)
        var w = JsonWriter()
        ArrBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBoolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrBoolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBoolean.gron"))
        var r = GronReader(data)
        let obj = try ArrBooleanCodec.decode(r)
        var w = GronWriter()
        ArrBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBoolean.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrBoolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrFloat64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrFloat64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrFloat64Codec.decode(r)
        var w = MsgPackWriter()
        ArrFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrFloat64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrFloat64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrFloat64.json"))
        var r = JsonReader(data)
        let obj = try ArrFloat64Codec.decode(r)
        var w = JsonWriter()
        ArrFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrFloat64.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrFloat64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrFloat64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrFloat64Codec.decode(r)
        var w = JsonWriter()
        ArrFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrFloat64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrFloat64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrFloat64.gron"))
        var r = GronReader(data)
        let obj = try ArrFloat64Codec.decode(r)
        var w = GronWriter()
        ArrFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrFloat64.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrFloat64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrBytesCodec.decode(r)
        var w = MsgPackWriter()
        ArrBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBytes.json"))
        var r = JsonReader(data)
        let obj = try ArrBytesCodec.decode(r)
        var w = JsonWriter()
        ArrBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrBytesCodec.decode(r)
        var w = JsonWriter()
        ArrBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrBytes.gron"))
        var r = GronReader(data)
        let obj = try ArrBytesCodec.decode(r)
        var w = GronWriter()
        ArrBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrInt64Codec.decode(r)
        var w = MsgPackWriter()
        ArrInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt64.json"))
        var r = JsonReader(data)
        let obj = try ArrInt64Codec.decode(r)
        var w = JsonWriter()
        ArrInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrInt64Codec.decode(r)
        var w = JsonWriter()
        ArrInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrInt64.gron"))
        var r = GronReader(data)
        let obj = try ArrInt64Codec.decode(r)
        var w = GronWriter()
        ArrInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ArrUint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrUint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ArrUint64Codec.decode(r)
        var w = MsgPackWriter()
        ArrUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrUint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ArrUint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrUint64.json"))
        var r = JsonReader(data)
        let obj = try ArrUint64Codec.decode(r)
        var w = JsonWriter()
        ArrUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrUint64.json"))
        jsonOk = true
    } catch {
        print("FAIL ArrUint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrUint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ArrUint64Codec.decode(r)
        var w = JsonWriter()
        ArrUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrUint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ArrUint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ArrUint64.gron"))
        var r = GronReader(data)
        let obj = try ArrUint64Codec.decode(r)
        var w = GronWriter()
        ArrUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ArrUint64.gron"))
        gronOk = true
    } catch {
        print("FAIL ArrUint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MultiArr1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MultiArr1Codec.decode(r)
        var w = MsgPackWriter()
        MultiArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MultiArr1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr1.json"))
        var r = JsonReader(data)
        let obj = try MultiArr1Codec.decode(r)
        var w = JsonWriter()
        MultiArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr1.json"))
        jsonOk = true
    } catch {
        print("FAIL MultiArr1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MultiArr1Codec.decode(r)
        var w = JsonWriter()
        MultiArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MultiArr1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr1.gron"))
        var r = GronReader(data)
        let obj = try MultiArr1Codec.decode(r)
        var w = GronWriter()
        MultiArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr1.gron"))
        gronOk = true
    } catch {
        print("FAIL MultiArr1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MultiArr2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MultiArr2Codec.decode(r)
        var w = MsgPackWriter()
        MultiArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MultiArr2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr2.json"))
        var r = JsonReader(data)
        let obj = try MultiArr2Codec.decode(r)
        var w = JsonWriter()
        MultiArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr2.json"))
        jsonOk = true
    } catch {
        print("FAIL MultiArr2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MultiArr2Codec.decode(r)
        var w = JsonWriter()
        MultiArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MultiArr2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr2.gron"))
        var r = GronReader(data)
        let obj = try MultiArr2Codec.decode(r)
        var w = GronWriter()
        MultiArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr2.gron"))
        gronOk = true
    } catch {
        print("FAIL MultiArr2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MultiArr3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MultiArr3Codec.decode(r)
        var w = MsgPackWriter()
        MultiArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MultiArr3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr3.json"))
        var r = JsonReader(data)
        let obj = try MultiArr3Codec.decode(r)
        var w = JsonWriter()
        MultiArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr3.json"))
        jsonOk = true
    } catch {
        print("FAIL MultiArr3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MultiArr3Codec.decode(r)
        var w = JsonWriter()
        MultiArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MultiArr3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr3.gron"))
        var r = GronReader(data)
        let obj = try MultiArr3Codec.decode(r)
        var w = GronWriter()
        MultiArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr3.gron"))
        gronOk = true
    } catch {
        print("FAIL MultiArr3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MultiArr4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MultiArr4Codec.decode(r)
        var w = MsgPackWriter()
        MultiArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MultiArr4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr4.json"))
        var r = JsonReader(data)
        let obj = try MultiArr4Codec.decode(r)
        var w = JsonWriter()
        MultiArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr4.json"))
        jsonOk = true
    } catch {
        print("FAIL MultiArr4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MultiArr4Codec.decode(r)
        var w = JsonWriter()
        MultiArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MultiArr4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr4.gron"))
        var r = GronReader(data)
        let obj = try MultiArr4Codec.decode(r)
        var w = GronWriter()
        MultiArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr4.gron"))
        gronOk = true
    } catch {
        print("FAIL MultiArr4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MultiArr5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MultiArr5Codec.decode(r)
        var w = MsgPackWriter()
        MultiArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MultiArr5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr5.json"))
        var r = JsonReader(data)
        let obj = try MultiArr5Codec.decode(r)
        var w = JsonWriter()
        MultiArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr5.json"))
        jsonOk = true
    } catch {
        print("FAIL MultiArr5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MultiArr5Codec.decode(r)
        var w = JsonWriter()
        MultiArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MultiArr5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MultiArr5.gron"))
        var r = GronReader(data)
        let obj = try MultiArr5Codec.decode(r)
        var w = GronWriter()
        MultiArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MultiArr5.gron"))
        gronOk = true
    } catch {
        print("FAIL MultiArr5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo1Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo1.json"))
        var r = JsonReader(data)
        let obj = try OptCombo1Codec.decode(r)
        var w = JsonWriter()
        OptCombo1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo1.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo1Codec.decode(r)
        var w = JsonWriter()
        OptCombo1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo1.gron"))
        var r = GronReader(data)
        let obj = try OptCombo1Codec.decode(r)
        var w = GronWriter()
        OptCombo1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo1.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo2Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo2.json"))
        var r = JsonReader(data)
        let obj = try OptCombo2Codec.decode(r)
        var w = JsonWriter()
        OptCombo2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo2.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo2Codec.decode(r)
        var w = JsonWriter()
        OptCombo2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo2.gron"))
        var r = GronReader(data)
        let obj = try OptCombo2Codec.decode(r)
        var w = GronWriter()
        OptCombo2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo2.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo3Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo3.json"))
        var r = JsonReader(data)
        let obj = try OptCombo3Codec.decode(r)
        var w = JsonWriter()
        OptCombo3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo3.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo3Codec.decode(r)
        var w = JsonWriter()
        OptCombo3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo3.gron"))
        var r = GronReader(data)
        let obj = try OptCombo3Codec.decode(r)
        var w = GronWriter()
        OptCombo3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo3.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo4Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo4.json"))
        var r = JsonReader(data)
        let obj = try OptCombo4Codec.decode(r)
        var w = JsonWriter()
        OptCombo4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo4.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo4Codec.decode(r)
        var w = JsonWriter()
        OptCombo4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo4.gron"))
        var r = GronReader(data)
        let obj = try OptCombo4Codec.decode(r)
        var w = GronWriter()
        OptCombo4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo4.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo5Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo5.json"))
        var r = JsonReader(data)
        let obj = try OptCombo5Codec.decode(r)
        var w = JsonWriter()
        OptCombo5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo5.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo5Codec.decode(r)
        var w = JsonWriter()
        OptCombo5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo5.gron"))
        var r = GronReader(data)
        let obj = try OptCombo5Codec.decode(r)
        var w = GronWriter()
        OptCombo5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo5.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo6() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo6.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo6Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo6.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo6 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo6.json"))
        var r = JsonReader(data)
        let obj = try OptCombo6Codec.decode(r)
        var w = JsonWriter()
        OptCombo6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo6.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo6 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo6.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo6Codec.decode(r)
        var w = JsonWriter()
        OptCombo6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo6.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo6 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo6.gron"))
        var r = GronReader(data)
        let obj = try OptCombo6Codec.decode(r)
        var w = GronWriter()
        OptCombo6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo6.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo6 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo7() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo7.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo7Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo7.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo7 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo7.json"))
        var r = JsonReader(data)
        let obj = try OptCombo7Codec.decode(r)
        var w = JsonWriter()
        OptCombo7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo7.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo7 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo7.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo7Codec.decode(r)
        var w = JsonWriter()
        OptCombo7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo7.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo7 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo7.gron"))
        var r = GronReader(data)
        let obj = try OptCombo7Codec.decode(r)
        var w = GronWriter()
        OptCombo7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo7.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo7 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo8Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo8.json"))
        var r = JsonReader(data)
        let obj = try OptCombo8Codec.decode(r)
        var w = JsonWriter()
        OptCombo8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo8.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo8Codec.decode(r)
        var w = JsonWriter()
        OptCombo8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo8.gron"))
        var r = GronReader(data)
        let obj = try OptCombo8Codec.decode(r)
        var w = GronWriter()
        OptCombo8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo8.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo9() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo9.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo9Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo9Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo9.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo9 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo9.json"))
        var r = JsonReader(data)
        let obj = try OptCombo9Codec.decode(r)
        var w = JsonWriter()
        OptCombo9Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo9.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo9 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo9.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo9Codec.decode(r)
        var w = JsonWriter()
        OptCombo9Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo9.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo9 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo9.gron"))
        var r = GronReader(data)
        let obj = try OptCombo9Codec.decode(r)
        var w = GronWriter()
        OptCombo9Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo9.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo9 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptCombo10() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo10.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptCombo10Codec.decode(r)
        var w = MsgPackWriter()
        OptCombo10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo10.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptCombo10 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo10.json"))
        var r = JsonReader(data)
        let obj = try OptCombo10Codec.decode(r)
        var w = JsonWriter()
        OptCombo10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo10.json"))
        jsonOk = true
    } catch {
        print("FAIL OptCombo10 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo10.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptCombo10Codec.decode(r)
        var w = JsonWriter()
        OptCombo10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo10.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptCombo10 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptCombo10.gron"))
        var r = GronReader(data)
        let obj = try OptCombo10Codec.decode(r)
        var w = GronWriter()
        OptCombo10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptCombo10.gron"))
        gronOk = true
    } catch {
        print("FAIL OptCombo10 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesArrays(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_ArrString()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrBoolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrFloat64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ArrUint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MultiArr1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MultiArr2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MultiArr3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MultiArr4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MultiArr5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo6()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo7()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo9()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptCombo10()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
