import Foundation
import Specodec

func testModel_PairString() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairString.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairStringCodec.decode(r)
        var w = MsgPackWriter()
        PairStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairString.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairString msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairString.json"))
        var r = JsonReader(data)
        let obj = try PairStringCodec.decode(r)
        var w = JsonWriter()
        PairStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairString.json"))
        jsonOk = true
    } catch {
        print("FAIL PairString json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairString.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairStringCodec.decode(r)
        var w = JsonWriter()
        PairStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairString.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairString unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairString.gron"))
        var r = GronReader(data)
        let obj = try PairStringCodec.decode(r)
        var w = GronWriter()
        PairStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairString.gron"))
        gronOk = true
    } catch {
        print("FAIL PairString gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairBoolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBoolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairBooleanCodec.decode(r)
        var w = MsgPackWriter()
        PairBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBoolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairBoolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBoolean.json"))
        var r = JsonReader(data)
        let obj = try PairBooleanCodec.decode(r)
        var w = JsonWriter()
        PairBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBoolean.json"))
        jsonOk = true
    } catch {
        print("FAIL PairBoolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBoolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairBooleanCodec.decode(r)
        var w = JsonWriter()
        PairBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBoolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairBoolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBoolean.gron"))
        var r = GronReader(data)
        let obj = try PairBooleanCodec.decode(r)
        var w = GronWriter()
        PairBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBoolean.gron"))
        gronOk = true
    } catch {
        print("FAIL PairBoolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairInt8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairInt8Codec.decode(r)
        var w = MsgPackWriter()
        PairInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairInt8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt8.json"))
        var r = JsonReader(data)
        let obj = try PairInt8Codec.decode(r)
        var w = JsonWriter()
        PairInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt8.json"))
        jsonOk = true
    } catch {
        print("FAIL PairInt8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairInt8Codec.decode(r)
        var w = JsonWriter()
        PairInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairInt8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt8.gron"))
        var r = GronReader(data)
        let obj = try PairInt8Codec.decode(r)
        var w = GronWriter()
        PairInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt8.gron"))
        gronOk = true
    } catch {
        print("FAIL PairInt8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairInt16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairInt16Codec.decode(r)
        var w = MsgPackWriter()
        PairInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairInt16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt16.json"))
        var r = JsonReader(data)
        let obj = try PairInt16Codec.decode(r)
        var w = JsonWriter()
        PairInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt16.json"))
        jsonOk = true
    } catch {
        print("FAIL PairInt16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairInt16Codec.decode(r)
        var w = JsonWriter()
        PairInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairInt16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt16.gron"))
        var r = GronReader(data)
        let obj = try PairInt16Codec.decode(r)
        var w = GronWriter()
        PairInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt16.gron"))
        gronOk = true
    } catch {
        print("FAIL PairInt16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairInt32Codec.decode(r)
        var w = MsgPackWriter()
        PairInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt32.json"))
        var r = JsonReader(data)
        let obj = try PairInt32Codec.decode(r)
        var w = JsonWriter()
        PairInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL PairInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairInt32Codec.decode(r)
        var w = JsonWriter()
        PairInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt32.gron"))
        var r = GronReader(data)
        let obj = try PairInt32Codec.decode(r)
        var w = GronWriter()
        PairInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL PairInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairInt64Codec.decode(r)
        var w = MsgPackWriter()
        PairInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt64.json"))
        var r = JsonReader(data)
        let obj = try PairInt64Codec.decode(r)
        var w = JsonWriter()
        PairInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL PairInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairInt64Codec.decode(r)
        var w = JsonWriter()
        PairInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairInt64.gron"))
        var r = GronReader(data)
        let obj = try PairInt64Codec.decode(r)
        var w = GronWriter()
        PairInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL PairInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairUint8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairUint8Codec.decode(r)
        var w = MsgPackWriter()
        PairUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairUint8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint8.json"))
        var r = JsonReader(data)
        let obj = try PairUint8Codec.decode(r)
        var w = JsonWriter()
        PairUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint8.json"))
        jsonOk = true
    } catch {
        print("FAIL PairUint8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairUint8Codec.decode(r)
        var w = JsonWriter()
        PairUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairUint8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint8.gron"))
        var r = GronReader(data)
        let obj = try PairUint8Codec.decode(r)
        var w = GronWriter()
        PairUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint8.gron"))
        gronOk = true
    } catch {
        print("FAIL PairUint8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairUint16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairUint16Codec.decode(r)
        var w = MsgPackWriter()
        PairUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairUint16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint16.json"))
        var r = JsonReader(data)
        let obj = try PairUint16Codec.decode(r)
        var w = JsonWriter()
        PairUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint16.json"))
        jsonOk = true
    } catch {
        print("FAIL PairUint16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairUint16Codec.decode(r)
        var w = JsonWriter()
        PairUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairUint16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint16.gron"))
        var r = GronReader(data)
        let obj = try PairUint16Codec.decode(r)
        var w = GronWriter()
        PairUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint16.gron"))
        gronOk = true
    } catch {
        print("FAIL PairUint16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairUint32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairUint32Codec.decode(r)
        var w = MsgPackWriter()
        PairUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairUint32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint32.json"))
        var r = JsonReader(data)
        let obj = try PairUint32Codec.decode(r)
        var w = JsonWriter()
        PairUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint32.json"))
        jsonOk = true
    } catch {
        print("FAIL PairUint32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairUint32Codec.decode(r)
        var w = JsonWriter()
        PairUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairUint32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint32.gron"))
        var r = GronReader(data)
        let obj = try PairUint32Codec.decode(r)
        var w = GronWriter()
        PairUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint32.gron"))
        gronOk = true
    } catch {
        print("FAIL PairUint32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairUint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairUint64Codec.decode(r)
        var w = MsgPackWriter()
        PairUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairUint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint64.json"))
        var r = JsonReader(data)
        let obj = try PairUint64Codec.decode(r)
        var w = JsonWriter()
        PairUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint64.json"))
        jsonOk = true
    } catch {
        print("FAIL PairUint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairUint64Codec.decode(r)
        var w = JsonWriter()
        PairUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairUint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairUint64.gron"))
        var r = GronReader(data)
        let obj = try PairUint64Codec.decode(r)
        var w = GronWriter()
        PairUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairUint64.gron"))
        gronOk = true
    } catch {
        print("FAIL PairUint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairFloat32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairFloat32Codec.decode(r)
        var w = MsgPackWriter()
        PairFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairFloat32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat32.json"))
        var r = JsonReader(data)
        let obj = try PairFloat32Codec.decode(r)
        var w = JsonWriter()
        PairFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat32.json"))
        jsonOk = true
    } catch {
        print("FAIL PairFloat32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairFloat32Codec.decode(r)
        var w = JsonWriter()
        PairFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairFloat32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat32.gron"))
        var r = GronReader(data)
        let obj = try PairFloat32Codec.decode(r)
        var w = GronWriter()
        PairFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat32.gron"))
        gronOk = true
    } catch {
        print("FAIL PairFloat32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairFloat64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairFloat64Codec.decode(r)
        var w = MsgPackWriter()
        PairFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairFloat64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat64.json"))
        var r = JsonReader(data)
        let obj = try PairFloat64Codec.decode(r)
        var w = JsonWriter()
        PairFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat64.json"))
        jsonOk = true
    } catch {
        print("FAIL PairFloat64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairFloat64Codec.decode(r)
        var w = JsonWriter()
        PairFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairFloat64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairFloat64.gron"))
        var r = GronReader(data)
        let obj = try PairFloat64Codec.decode(r)
        var w = GronWriter()
        PairFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairFloat64.gron"))
        gronOk = true
    } catch {
        print("FAIL PairFloat64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_PairBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try PairBytesCodec.decode(r)
        var w = MsgPackWriter()
        PairBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL PairBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBytes.json"))
        var r = JsonReader(data)
        let obj = try PairBytesCodec.decode(r)
        var w = JsonWriter()
        PairBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL PairBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try PairBytesCodec.decode(r)
        var w = JsonWriter()
        PairBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL PairBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/PairBytes.gron"))
        var r = GronReader(data)
        let obj = try PairBytesCodec.decode(r)
        var w = GronWriter()
        PairBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/PairBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL PairBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringInt32Codec.decode(r)
        var w = MsgPackWriter()
        DualStringInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt32.json"))
        var r = JsonReader(data)
        let obj = try DualStringInt32Codec.decode(r)
        var w = JsonWriter()
        DualStringInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringInt32Codec.decode(r)
        var w = JsonWriter()
        DualStringInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt32.gron"))
        var r = GronReader(data)
        let obj = try DualStringInt32Codec.decode(r)
        var w = GronWriter()
        DualStringInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringBoolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBoolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringBooleanCodec.decode(r)
        var w = MsgPackWriter()
        DualStringBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBoolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringBoolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBoolean.json"))
        var r = JsonReader(data)
        let obj = try DualStringBooleanCodec.decode(r)
        var w = JsonWriter()
        DualStringBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBoolean.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringBoolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBoolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringBooleanCodec.decode(r)
        var w = JsonWriter()
        DualStringBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBoolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringBoolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBoolean.gron"))
        var r = GronReader(data)
        let obj = try DualStringBooleanCodec.decode(r)
        var w = GronWriter()
        DualStringBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBoolean.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringBoolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringFloat64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringFloat64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringFloat64Codec.decode(r)
        var w = MsgPackWriter()
        DualStringFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringFloat64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringFloat64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringFloat64.json"))
        var r = JsonReader(data)
        let obj = try DualStringFloat64Codec.decode(r)
        var w = JsonWriter()
        DualStringFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringFloat64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringFloat64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringFloat64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringFloat64Codec.decode(r)
        var w = JsonWriter()
        DualStringFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringFloat64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringFloat64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringFloat64.gron"))
        var r = GronReader(data)
        let obj = try DualStringFloat64Codec.decode(r)
        var w = GronWriter()
        DualStringFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringFloat64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringFloat64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringBytesCodec.decode(r)
        var w = MsgPackWriter()
        DualStringBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBytes.json"))
        var r = JsonReader(data)
        let obj = try DualStringBytesCodec.decode(r)
        var w = JsonWriter()
        DualStringBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringBytesCodec.decode(r)
        var w = JsonWriter()
        DualStringBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringBytes.gron"))
        var r = GronReader(data)
        let obj = try DualStringBytesCodec.decode(r)
        var w = GronWriter()
        DualStringBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt32Boolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Boolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt32BooleanCodec.decode(r)
        var w = MsgPackWriter()
        DualInt32BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Boolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt32Boolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Boolean.json"))
        var r = JsonReader(data)
        let obj = try DualInt32BooleanCodec.decode(r)
        var w = JsonWriter()
        DualInt32BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Boolean.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt32Boolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Boolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt32BooleanCodec.decode(r)
        var w = JsonWriter()
        DualInt32BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Boolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt32Boolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Boolean.gron"))
        var r = GronReader(data)
        let obj = try DualInt32BooleanCodec.decode(r)
        var w = GronWriter()
        DualInt32BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Boolean.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt32Boolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt32Float64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Float64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt32Float64Codec.decode(r)
        var w = MsgPackWriter()
        DualInt32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Float64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt32Float64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Float64.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Float64Codec.decode(r)
        var w = JsonWriter()
        DualInt32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Float64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt32Float64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Float64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Float64Codec.decode(r)
        var w = JsonWriter()
        DualInt32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Float64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt32Float64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Float64.gron"))
        var r = GronReader(data)
        let obj = try DualInt32Float64Codec.decode(r)
        var w = GronWriter()
        DualInt32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Float64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt32Float64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt32Int64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Int64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt32Int64Codec.decode(r)
        var w = MsgPackWriter()
        DualInt32Int64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Int64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt32Int64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Int64.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Int64Codec.decode(r)
        var w = JsonWriter()
        DualInt32Int64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Int64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt32Int64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Int64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Int64Codec.decode(r)
        var w = JsonWriter()
        DualInt32Int64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Int64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt32Int64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Int64.gron"))
        var r = GronReader(data)
        let obj = try DualInt32Int64Codec.decode(r)
        var w = GronWriter()
        DualInt32Int64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Int64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt32Int64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt32Uint32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Uint32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt32Uint32Codec.decode(r)
        var w = MsgPackWriter()
        DualInt32Uint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Uint32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt32Uint32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Uint32.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Uint32Codec.decode(r)
        var w = JsonWriter()
        DualInt32Uint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Uint32.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt32Uint32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Uint32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt32Uint32Codec.decode(r)
        var w = JsonWriter()
        DualInt32Uint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Uint32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt32Uint32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Uint32.gron"))
        var r = GronReader(data)
        let obj = try DualInt32Uint32Codec.decode(r)
        var w = GronWriter()
        DualInt32Uint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Uint32.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt32Uint32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt64Uint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Uint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt64Uint64Codec.decode(r)
        var w = MsgPackWriter()
        DualInt64Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Uint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt64Uint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Uint64.json"))
        var r = JsonReader(data)
        let obj = try DualInt64Uint64Codec.decode(r)
        var w = JsonWriter()
        DualInt64Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Uint64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt64Uint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Uint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt64Uint64Codec.decode(r)
        var w = JsonWriter()
        DualInt64Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Uint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt64Uint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Uint64.gron"))
        var r = GronReader(data)
        let obj = try DualInt64Uint64Codec.decode(r)
        var w = GronWriter()
        DualInt64Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Uint64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt64Uint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualFloat32Float64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat32Float64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualFloat32Float64Codec.decode(r)
        var w = MsgPackWriter()
        DualFloat32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat32Float64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualFloat32Float64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat32Float64.json"))
        var r = JsonReader(data)
        let obj = try DualFloat32Float64Codec.decode(r)
        var w = JsonWriter()
        DualFloat32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat32Float64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualFloat32Float64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat32Float64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualFloat32Float64Codec.decode(r)
        var w = JsonWriter()
        DualFloat32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat32Float64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualFloat32Float64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat32Float64.gron"))
        var r = GronReader(data)
        let obj = try DualFloat32Float64Codec.decode(r)
        var w = GronWriter()
        DualFloat32Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat32Float64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualFloat32Float64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualFloat64Boolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Boolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualFloat64BooleanCodec.decode(r)
        var w = MsgPackWriter()
        DualFloat64BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Boolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualFloat64Boolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Boolean.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64BooleanCodec.decode(r)
        var w = JsonWriter()
        DualFloat64BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Boolean.json"))
        jsonOk = true
    } catch {
        print("FAIL DualFloat64Boolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Boolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64BooleanCodec.decode(r)
        var w = JsonWriter()
        DualFloat64BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Boolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualFloat64Boolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Boolean.gron"))
        var r = GronReader(data)
        let obj = try DualFloat64BooleanCodec.decode(r)
        var w = GronWriter()
        DualFloat64BooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Boolean.gron"))
        gronOk = true
    } catch {
        print("FAIL DualFloat64Boolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualFloat64Bytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Bytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualFloat64BytesCodec.decode(r)
        var w = MsgPackWriter()
        DualFloat64BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Bytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualFloat64Bytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Bytes.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64BytesCodec.decode(r)
        var w = JsonWriter()
        DualFloat64BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Bytes.json"))
        jsonOk = true
    } catch {
        print("FAIL DualFloat64Bytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Bytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64BytesCodec.decode(r)
        var w = JsonWriter()
        DualFloat64BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Bytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualFloat64Bytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Bytes.gron"))
        var r = GronReader(data)
        let obj = try DualFloat64BytesCodec.decode(r)
        var w = GronWriter()
        DualFloat64BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Bytes.gron"))
        gronOk = true
    } catch {
        print("FAIL DualFloat64Bytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualUint32Uint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint32Uint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualUint32Uint64Codec.decode(r)
        var w = MsgPackWriter()
        DualUint32Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint32Uint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualUint32Uint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint32Uint64.json"))
        var r = JsonReader(data)
        let obj = try DualUint32Uint64Codec.decode(r)
        var w = JsonWriter()
        DualUint32Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint32Uint64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualUint32Uint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint32Uint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualUint32Uint64Codec.decode(r)
        var w = JsonWriter()
        DualUint32Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint32Uint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualUint32Uint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint32Uint64.gron"))
        var r = GronReader(data)
        let obj = try DualUint32Uint64Codec.decode(r)
        var w = GronWriter()
        DualUint32Uint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint32Uint64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualUint32Uint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualBooleanBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualBooleanBytesCodec.decode(r)
        var w = MsgPackWriter()
        DualBooleanBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualBooleanBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanBytes.json"))
        var r = JsonReader(data)
        let obj = try DualBooleanBytesCodec.decode(r)
        var w = JsonWriter()
        DualBooleanBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL DualBooleanBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualBooleanBytesCodec.decode(r)
        var w = JsonWriter()
        DualBooleanBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualBooleanBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanBytes.gron"))
        var r = GronReader(data)
        let obj = try DualBooleanBytesCodec.decode(r)
        var w = GronWriter()
        DualBooleanBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL DualBooleanBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt8Uint8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Uint8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt8Uint8Codec.decode(r)
        var w = MsgPackWriter()
        DualInt8Uint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Uint8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt8Uint8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Uint8.json"))
        var r = JsonReader(data)
        let obj = try DualInt8Uint8Codec.decode(r)
        var w = JsonWriter()
        DualInt8Uint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Uint8.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt8Uint8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Uint8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt8Uint8Codec.decode(r)
        var w = JsonWriter()
        DualInt8Uint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Uint8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt8Uint8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Uint8.gron"))
        var r = GronReader(data)
        let obj = try DualInt8Uint8Codec.decode(r)
        var w = GronWriter()
        DualInt8Uint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Uint8.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt8Uint8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt16Uint16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt16Uint16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt16Uint16Codec.decode(r)
        var w = MsgPackWriter()
        DualInt16Uint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt16Uint16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt16Uint16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt16Uint16.json"))
        var r = JsonReader(data)
        let obj = try DualInt16Uint16Codec.decode(r)
        var w = JsonWriter()
        DualInt16Uint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt16Uint16.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt16Uint16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt16Uint16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt16Uint16Codec.decode(r)
        var w = JsonWriter()
        DualInt16Uint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt16Uint16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt16Uint16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt16Uint16.gron"))
        var r = GronReader(data)
        let obj = try DualInt16Uint16Codec.decode(r)
        var w = GronWriter()
        DualInt16Uint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt16Uint16.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt16Uint16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringInt64Codec.decode(r)
        var w = MsgPackWriter()
        DualStringInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt64.json"))
        var r = JsonReader(data)
        let obj = try DualStringInt64Codec.decode(r)
        var w = JsonWriter()
        DualStringInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringInt64Codec.decode(r)
        var w = JsonWriter()
        DualStringInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringInt64.gron"))
        var r = GronReader(data)
        let obj = try DualStringInt64Codec.decode(r)
        var w = GronWriter()
        DualStringInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualStringUint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringUint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualStringUint64Codec.decode(r)
        var w = MsgPackWriter()
        DualStringUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringUint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualStringUint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringUint64.json"))
        var r = JsonReader(data)
        let obj = try DualStringUint64Codec.decode(r)
        var w = JsonWriter()
        DualStringUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringUint64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualStringUint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringUint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualStringUint64Codec.decode(r)
        var w = JsonWriter()
        DualStringUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringUint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualStringUint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualStringUint64.gron"))
        var r = GronReader(data)
        let obj = try DualStringUint64Codec.decode(r)
        var w = GronWriter()
        DualStringUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualStringUint64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualStringUint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt32Bytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Bytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt32BytesCodec.decode(r)
        var w = MsgPackWriter()
        DualInt32BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Bytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt32Bytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Bytes.json"))
        var r = JsonReader(data)
        let obj = try DualInt32BytesCodec.decode(r)
        var w = JsonWriter()
        DualInt32BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Bytes.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt32Bytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Bytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt32BytesCodec.decode(r)
        var w = JsonWriter()
        DualInt32BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Bytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt32Bytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt32Bytes.gron"))
        var r = GronReader(data)
        let obj = try DualInt32BytesCodec.decode(r)
        var w = GronWriter()
        DualInt32BytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt32Bytes.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt32Bytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualFloat64Int32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Int32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualFloat64Int32Codec.decode(r)
        var w = MsgPackWriter()
        DualFloat64Int32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Int32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualFloat64Int32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Int32.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64Int32Codec.decode(r)
        var w = JsonWriter()
        DualFloat64Int32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Int32.json"))
        jsonOk = true
    } catch {
        print("FAIL DualFloat64Int32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Int32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualFloat64Int32Codec.decode(r)
        var w = JsonWriter()
        DualFloat64Int32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Int32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualFloat64Int32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualFloat64Int32.gron"))
        var r = GronReader(data)
        let obj = try DualFloat64Int32Codec.decode(r)
        var w = GronWriter()
        DualFloat64Int32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualFloat64Int32.gron"))
        gronOk = true
    } catch {
        print("FAIL DualFloat64Int32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualBooleanInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualBooleanInt32Codec.decode(r)
        var w = MsgPackWriter()
        DualBooleanInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualBooleanInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanInt32.json"))
        var r = JsonReader(data)
        let obj = try DualBooleanInt32Codec.decode(r)
        var w = JsonWriter()
        DualBooleanInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL DualBooleanInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualBooleanInt32Codec.decode(r)
        var w = JsonWriter()
        DualBooleanInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualBooleanInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBooleanInt32.gron"))
        var r = GronReader(data)
        let obj = try DualBooleanInt32Codec.decode(r)
        var w = GronWriter()
        DualBooleanInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBooleanInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL DualBooleanInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualBytesInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBytesInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualBytesInt64Codec.decode(r)
        var w = MsgPackWriter()
        DualBytesInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBytesInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualBytesInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBytesInt64.json"))
        var r = JsonReader(data)
        let obj = try DualBytesInt64Codec.decode(r)
        var w = JsonWriter()
        DualBytesInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBytesInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualBytesInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBytesInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualBytesInt64Codec.decode(r)
        var w = JsonWriter()
        DualBytesInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBytesInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualBytesInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualBytesInt64.gron"))
        var r = GronReader(data)
        let obj = try DualBytesInt64Codec.decode(r)
        var w = GronWriter()
        DualBytesInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualBytesInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualBytesInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt8Float32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Float32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt8Float32Codec.decode(r)
        var w = MsgPackWriter()
        DualInt8Float32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Float32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt8Float32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Float32.json"))
        var r = JsonReader(data)
        let obj = try DualInt8Float32Codec.decode(r)
        var w = JsonWriter()
        DualInt8Float32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Float32.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt8Float32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Float32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt8Float32Codec.decode(r)
        var w = JsonWriter()
        DualInt8Float32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Float32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt8Float32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt8Float32.gron"))
        var r = GronReader(data)
        let obj = try DualInt8Float32Codec.decode(r)
        var w = GronWriter()
        DualInt8Float32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt8Float32.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt8Float32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualUint8Int16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint8Int16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualUint8Int16Codec.decode(r)
        var w = MsgPackWriter()
        DualUint8Int16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint8Int16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualUint8Int16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint8Int16.json"))
        var r = JsonReader(data)
        let obj = try DualUint8Int16Codec.decode(r)
        var w = JsonWriter()
        DualUint8Int16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint8Int16.json"))
        jsonOk = true
    } catch {
        print("FAIL DualUint8Int16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint8Int16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualUint8Int16Codec.decode(r)
        var w = JsonWriter()
        DualUint8Int16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint8Int16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualUint8Int16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint8Int16.gron"))
        var r = GronReader(data)
        let obj = try DualUint8Int16Codec.decode(r)
        var w = GronWriter()
        DualUint8Int16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint8Int16.gron"))
        gronOk = true
    } catch {
        print("FAIL DualUint8Int16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualInt64Float64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Float64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualInt64Float64Codec.decode(r)
        var w = MsgPackWriter()
        DualInt64Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Float64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualInt64Float64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Float64.json"))
        var r = JsonReader(data)
        let obj = try DualInt64Float64Codec.decode(r)
        var w = JsonWriter()
        DualInt64Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Float64.json"))
        jsonOk = true
    } catch {
        print("FAIL DualInt64Float64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Float64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualInt64Float64Codec.decode(r)
        var w = JsonWriter()
        DualInt64Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Float64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualInt64Float64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualInt64Float64.gron"))
        var r = GronReader(data)
        let obj = try DualInt64Float64Codec.decode(r)
        var w = GronWriter()
        DualInt64Float64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualInt64Float64.gron"))
        gronOk = true
    } catch {
        print("FAIL DualInt64Float64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DualUint64String() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint64String.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DualUint64StringCodec.decode(r)
        var w = MsgPackWriter()
        DualUint64StringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint64String.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DualUint64String msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint64String.json"))
        var r = JsonReader(data)
        let obj = try DualUint64StringCodec.decode(r)
        var w = JsonWriter()
        DualUint64StringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint64String.json"))
        jsonOk = true
    } catch {
        print("FAIL DualUint64String json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint64String.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DualUint64StringCodec.decode(r)
        var w = JsonWriter()
        DualUint64StringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint64String.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DualUint64String unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DualUint64String.gron"))
        var r = GronReader(data)
        let obj = try DualUint64StringCodec.decode(r)
        var w = GronWriter()
        DualUint64StringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DualUint64String.gron"))
        gronOk = true
    } catch {
        print("FAIL DualUint64String gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple01() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple01.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple01Codec.decode(r)
        var w = MsgPackWriter()
        Triple01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple01.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple01 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple01.json"))
        var r = JsonReader(data)
        let obj = try Triple01Codec.decode(r)
        var w = JsonWriter()
        Triple01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple01.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple01 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple01.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple01Codec.decode(r)
        var w = JsonWriter()
        Triple01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple01.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple01 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple01.gron"))
        var r = GronReader(data)
        let obj = try Triple01Codec.decode(r)
        var w = GronWriter()
        Triple01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple01.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple01 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple02() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple02.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple02Codec.decode(r)
        var w = MsgPackWriter()
        Triple02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple02.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple02 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple02.json"))
        var r = JsonReader(data)
        let obj = try Triple02Codec.decode(r)
        var w = JsonWriter()
        Triple02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple02.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple02 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple02.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple02Codec.decode(r)
        var w = JsonWriter()
        Triple02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple02.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple02 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple02.gron"))
        var r = GronReader(data)
        let obj = try Triple02Codec.decode(r)
        var w = GronWriter()
        Triple02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple02.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple02 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple03() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple03.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple03Codec.decode(r)
        var w = MsgPackWriter()
        Triple03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple03.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple03 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple03.json"))
        var r = JsonReader(data)
        let obj = try Triple03Codec.decode(r)
        var w = JsonWriter()
        Triple03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple03.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple03 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple03.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple03Codec.decode(r)
        var w = JsonWriter()
        Triple03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple03.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple03 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple03.gron"))
        var r = GronReader(data)
        let obj = try Triple03Codec.decode(r)
        var w = GronWriter()
        Triple03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple03.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple03 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple04() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple04.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple04Codec.decode(r)
        var w = MsgPackWriter()
        Triple04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple04.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple04 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple04.json"))
        var r = JsonReader(data)
        let obj = try Triple04Codec.decode(r)
        var w = JsonWriter()
        Triple04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple04.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple04 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple04.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple04Codec.decode(r)
        var w = JsonWriter()
        Triple04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple04.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple04 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple04.gron"))
        var r = GronReader(data)
        let obj = try Triple04Codec.decode(r)
        var w = GronWriter()
        Triple04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple04.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple04 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple05() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple05.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple05Codec.decode(r)
        var w = MsgPackWriter()
        Triple05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple05.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple05 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple05.json"))
        var r = JsonReader(data)
        let obj = try Triple05Codec.decode(r)
        var w = JsonWriter()
        Triple05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple05.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple05 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple05.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple05Codec.decode(r)
        var w = JsonWriter()
        Triple05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple05.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple05 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple05.gron"))
        var r = GronReader(data)
        let obj = try Triple05Codec.decode(r)
        var w = GronWriter()
        Triple05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple05.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple05 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple06() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple06.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple06Codec.decode(r)
        var w = MsgPackWriter()
        Triple06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple06.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple06 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple06.json"))
        var r = JsonReader(data)
        let obj = try Triple06Codec.decode(r)
        var w = JsonWriter()
        Triple06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple06.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple06 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple06.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple06Codec.decode(r)
        var w = JsonWriter()
        Triple06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple06.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple06 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple06.gron"))
        var r = GronReader(data)
        let obj = try Triple06Codec.decode(r)
        var w = GronWriter()
        Triple06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple06.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple06 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple07() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple07.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple07Codec.decode(r)
        var w = MsgPackWriter()
        Triple07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple07.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple07 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple07.json"))
        var r = JsonReader(data)
        let obj = try Triple07Codec.decode(r)
        var w = JsonWriter()
        Triple07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple07.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple07 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple07.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple07Codec.decode(r)
        var w = JsonWriter()
        Triple07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple07.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple07 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple07.gron"))
        var r = GronReader(data)
        let obj = try Triple07Codec.decode(r)
        var w = GronWriter()
        Triple07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple07.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple07 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple08() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple08.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple08Codec.decode(r)
        var w = MsgPackWriter()
        Triple08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple08.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple08 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple08.json"))
        var r = JsonReader(data)
        let obj = try Triple08Codec.decode(r)
        var w = JsonWriter()
        Triple08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple08.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple08 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple08.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple08Codec.decode(r)
        var w = JsonWriter()
        Triple08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple08.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple08 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple08.gron"))
        var r = GronReader(data)
        let obj = try Triple08Codec.decode(r)
        var w = GronWriter()
        Triple08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple08.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple08 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple09() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple09.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple09Codec.decode(r)
        var w = MsgPackWriter()
        Triple09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple09.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple09 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple09.json"))
        var r = JsonReader(data)
        let obj = try Triple09Codec.decode(r)
        var w = JsonWriter()
        Triple09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple09.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple09 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple09.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple09Codec.decode(r)
        var w = JsonWriter()
        Triple09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple09.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple09 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple09.gron"))
        var r = GronReader(data)
        let obj = try Triple09Codec.decode(r)
        var w = GronWriter()
        Triple09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple09.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple09 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple10() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple10.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple10Codec.decode(r)
        var w = MsgPackWriter()
        Triple10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple10.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple10 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple10.json"))
        var r = JsonReader(data)
        let obj = try Triple10Codec.decode(r)
        var w = JsonWriter()
        Triple10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple10.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple10 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple10.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple10Codec.decode(r)
        var w = JsonWriter()
        Triple10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple10.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple10 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple10.gron"))
        var r = GronReader(data)
        let obj = try Triple10Codec.decode(r)
        var w = GronWriter()
        Triple10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple10.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple10 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple11() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple11.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple11Codec.decode(r)
        var w = MsgPackWriter()
        Triple11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple11.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple11 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple11.json"))
        var r = JsonReader(data)
        let obj = try Triple11Codec.decode(r)
        var w = JsonWriter()
        Triple11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple11.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple11 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple11.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple11Codec.decode(r)
        var w = JsonWriter()
        Triple11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple11.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple11 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple11.gron"))
        var r = GronReader(data)
        let obj = try Triple11Codec.decode(r)
        var w = GronWriter()
        Triple11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple11.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple11 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple12() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple12.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple12Codec.decode(r)
        var w = MsgPackWriter()
        Triple12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple12.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple12 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple12.json"))
        var r = JsonReader(data)
        let obj = try Triple12Codec.decode(r)
        var w = JsonWriter()
        Triple12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple12.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple12 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple12.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple12Codec.decode(r)
        var w = JsonWriter()
        Triple12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple12.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple12 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple12.gron"))
        var r = GronReader(data)
        let obj = try Triple12Codec.decode(r)
        var w = GronWriter()
        Triple12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple12.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple12 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple13() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple13.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple13Codec.decode(r)
        var w = MsgPackWriter()
        Triple13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple13.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple13 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple13.json"))
        var r = JsonReader(data)
        let obj = try Triple13Codec.decode(r)
        var w = JsonWriter()
        Triple13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple13.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple13 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple13.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple13Codec.decode(r)
        var w = JsonWriter()
        Triple13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple13.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple13 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple13.gron"))
        var r = GronReader(data)
        let obj = try Triple13Codec.decode(r)
        var w = GronWriter()
        Triple13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple13.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple13 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple14() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple14.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple14Codec.decode(r)
        var w = MsgPackWriter()
        Triple14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple14.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple14 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple14.json"))
        var r = JsonReader(data)
        let obj = try Triple14Codec.decode(r)
        var w = JsonWriter()
        Triple14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple14.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple14 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple14.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple14Codec.decode(r)
        var w = JsonWriter()
        Triple14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple14.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple14 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple14.gron"))
        var r = GronReader(data)
        let obj = try Triple14Codec.decode(r)
        var w = GronWriter()
        Triple14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple14.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple14 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Triple15() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple15.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Triple15Codec.decode(r)
        var w = MsgPackWriter()
        Triple15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple15.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Triple15 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple15.json"))
        var r = JsonReader(data)
        let obj = try Triple15Codec.decode(r)
        var w = JsonWriter()
        Triple15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple15.json"))
        jsonOk = true
    } catch {
        print("FAIL Triple15 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple15.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Triple15Codec.decode(r)
        var w = JsonWriter()
        Triple15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple15.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Triple15 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Triple15.gron"))
        var r = GronReader(data)
        let obj = try Triple15Codec.decode(r)
        var w = GronWriter()
        Triple15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Triple15.gron"))
        gronOk = true
    } catch {
        print("FAIL Triple15 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesPairs(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_PairString()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairBoolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairInt8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairInt16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairUint8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairUint16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairUint32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairUint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairFloat32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairFloat64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_PairBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringBoolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringFloat64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt32Boolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt32Float64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt32Int64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt32Uint32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt64Uint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualFloat32Float64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualFloat64Boolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualFloat64Bytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualUint32Uint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualBooleanBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt8Uint8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt16Uint16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualStringUint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt32Bytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualFloat64Int32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualBooleanInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualBytesInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt8Float32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualUint8Int16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualInt64Float64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DualUint64String()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple01()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple02()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple03()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple04()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple05()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple06()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple07()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple08()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple09()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple10()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple11()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple12()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple13()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple14()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Triple15()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
