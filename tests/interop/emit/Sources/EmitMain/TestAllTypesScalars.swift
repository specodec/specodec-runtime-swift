import Foundation
import Specodec

func testModel_SingleString() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleString.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleStringCodec.decode(r)
        var w = MsgPackWriter()
        SingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleString.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleString msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleString.json"))
        var r = JsonReader(data)
        let obj = try SingleStringCodec.decode(r)
        var w = JsonWriter()
        SingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleString.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleString json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleString.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleStringCodec.decode(r)
        var w = JsonWriter()
        SingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleString.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleString unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleString.gron"))
        var r = GronReader(data)
        let obj = try SingleStringCodec.decode(r)
        var w = GronWriter()
        SingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleString.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleString gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleBoolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBoolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleBooleanCodec.decode(r)
        var w = MsgPackWriter()
        SingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBoolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleBoolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBoolean.json"))
        var r = JsonReader(data)
        let obj = try SingleBooleanCodec.decode(r)
        var w = JsonWriter()
        SingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBoolean.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleBoolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBoolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleBooleanCodec.decode(r)
        var w = JsonWriter()
        SingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBoolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleBoolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBoolean.gron"))
        var r = GronReader(data)
        let obj = try SingleBooleanCodec.decode(r)
        var w = GronWriter()
        SingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBoolean.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleBoolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleInt8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleInt8Codec.decode(r)
        var w = MsgPackWriter()
        SingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleInt8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt8.json"))
        var r = JsonReader(data)
        let obj = try SingleInt8Codec.decode(r)
        var w = JsonWriter()
        SingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt8.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleInt8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleInt8Codec.decode(r)
        var w = JsonWriter()
        SingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleInt8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt8.gron"))
        var r = GronReader(data)
        let obj = try SingleInt8Codec.decode(r)
        var w = GronWriter()
        SingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt8.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleInt8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleInt16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleInt16Codec.decode(r)
        var w = MsgPackWriter()
        SingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleInt16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt16.json"))
        var r = JsonReader(data)
        let obj = try SingleInt16Codec.decode(r)
        var w = JsonWriter()
        SingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt16.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleInt16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleInt16Codec.decode(r)
        var w = JsonWriter()
        SingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleInt16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt16.gron"))
        var r = GronReader(data)
        let obj = try SingleInt16Codec.decode(r)
        var w = GronWriter()
        SingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt16.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleInt16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleInt32Codec.decode(r)
        var w = MsgPackWriter()
        SingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt32.json"))
        var r = JsonReader(data)
        let obj = try SingleInt32Codec.decode(r)
        var w = JsonWriter()
        SingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleInt32Codec.decode(r)
        var w = JsonWriter()
        SingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt32.gron"))
        var r = GronReader(data)
        let obj = try SingleInt32Codec.decode(r)
        var w = GronWriter()
        SingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleInt64Codec.decode(r)
        var w = MsgPackWriter()
        SingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt64.json"))
        var r = JsonReader(data)
        let obj = try SingleInt64Codec.decode(r)
        var w = JsonWriter()
        SingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleInt64Codec.decode(r)
        var w = JsonWriter()
        SingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleInt64.gron"))
        var r = GronReader(data)
        let obj = try SingleInt64Codec.decode(r)
        var w = GronWriter()
        SingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleUint8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleUint8Codec.decode(r)
        var w = MsgPackWriter()
        SingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleUint8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint8.json"))
        var r = JsonReader(data)
        let obj = try SingleUint8Codec.decode(r)
        var w = JsonWriter()
        SingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint8.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleUint8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleUint8Codec.decode(r)
        var w = JsonWriter()
        SingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleUint8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint8.gron"))
        var r = GronReader(data)
        let obj = try SingleUint8Codec.decode(r)
        var w = GronWriter()
        SingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint8.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleUint8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleUint16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleUint16Codec.decode(r)
        var w = MsgPackWriter()
        SingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleUint16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint16.json"))
        var r = JsonReader(data)
        let obj = try SingleUint16Codec.decode(r)
        var w = JsonWriter()
        SingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint16.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleUint16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleUint16Codec.decode(r)
        var w = JsonWriter()
        SingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleUint16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint16.gron"))
        var r = GronReader(data)
        let obj = try SingleUint16Codec.decode(r)
        var w = GronWriter()
        SingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint16.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleUint16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleUint32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleUint32Codec.decode(r)
        var w = MsgPackWriter()
        SingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleUint32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint32.json"))
        var r = JsonReader(data)
        let obj = try SingleUint32Codec.decode(r)
        var w = JsonWriter()
        SingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint32.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleUint32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleUint32Codec.decode(r)
        var w = JsonWriter()
        SingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleUint32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint32.gron"))
        var r = GronReader(data)
        let obj = try SingleUint32Codec.decode(r)
        var w = GronWriter()
        SingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint32.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleUint32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleUint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleUint64Codec.decode(r)
        var w = MsgPackWriter()
        SingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleUint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint64.json"))
        var r = JsonReader(data)
        let obj = try SingleUint64Codec.decode(r)
        var w = JsonWriter()
        SingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint64.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleUint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleUint64Codec.decode(r)
        var w = JsonWriter()
        SingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleUint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleUint64.gron"))
        var r = GronReader(data)
        let obj = try SingleUint64Codec.decode(r)
        var w = GronWriter()
        SingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleUint64.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleUint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleFloat32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleFloat32Codec.decode(r)
        var w = MsgPackWriter()
        SingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleFloat32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat32.json"))
        var r = JsonReader(data)
        let obj = try SingleFloat32Codec.decode(r)
        var w = JsonWriter()
        SingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat32.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleFloat32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleFloat32Codec.decode(r)
        var w = JsonWriter()
        SingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleFloat32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat32.gron"))
        var r = GronReader(data)
        let obj = try SingleFloat32Codec.decode(r)
        var w = GronWriter()
        SingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat32.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleFloat32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleFloat64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleFloat64Codec.decode(r)
        var w = MsgPackWriter()
        SingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleFloat64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat64.json"))
        var r = JsonReader(data)
        let obj = try SingleFloat64Codec.decode(r)
        var w = JsonWriter()
        SingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat64.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleFloat64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleFloat64Codec.decode(r)
        var w = JsonWriter()
        SingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleFloat64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleFloat64.gron"))
        var r = GronReader(data)
        let obj = try SingleFloat64Codec.decode(r)
        var w = GronWriter()
        SingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleFloat64.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleFloat64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_SingleBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try SingleBytesCodec.decode(r)
        var w = MsgPackWriter()
        SingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL SingleBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBytes.json"))
        var r = JsonReader(data)
        let obj = try SingleBytesCodec.decode(r)
        var w = JsonWriter()
        SingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL SingleBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try SingleBytesCodec.decode(r)
        var w = JsonWriter()
        SingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL SingleBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/SingleBytes.gron"))
        var r = GronReader(data)
        let obj = try SingleBytesCodec.decode(r)
        var w = GronWriter()
        SingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/SingleBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL SingleBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesScalars(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_SingleString()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleBoolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleInt8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleInt16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleUint8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleUint16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleUint32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleUint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleFloat32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleFloat64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_SingleBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
