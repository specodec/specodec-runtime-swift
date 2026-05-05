import Foundation
import Specodec

func testModel_OptInner() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = MsgPackWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptInner msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.json"))
        var r = JsonReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = JsonWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.json"))
        jsonOk = true
    } catch {
        print("FAIL OptInner json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = JsonWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptInner unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.gron"))
        var r = GronReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = GronWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.gron"))
        gronOk = true
    } catch {
        print("FAIL OptInner gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

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

func testModel_OptSingleString() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleString.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleStringCodec.decode(r)
        var w = MsgPackWriter()
        OptSingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleString.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleString msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleString.json"))
        var r = JsonReader(data)
        let obj = try OptSingleStringCodec.decode(r)
        var w = JsonWriter()
        OptSingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleString.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleString json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleString.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleStringCodec.decode(r)
        var w = JsonWriter()
        OptSingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleString.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleString unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleString.gron"))
        var r = GronReader(data)
        let obj = try OptSingleStringCodec.decode(r)
        var w = GronWriter()
        OptSingleStringCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleString.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleString gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleBoolean() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBoolean.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleBooleanCodec.decode(r)
        var w = MsgPackWriter()
        OptSingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBoolean.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleBoolean msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBoolean.json"))
        var r = JsonReader(data)
        let obj = try OptSingleBooleanCodec.decode(r)
        var w = JsonWriter()
        OptSingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBoolean.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleBoolean json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBoolean.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleBooleanCodec.decode(r)
        var w = JsonWriter()
        OptSingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBoolean.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleBoolean unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBoolean.gron"))
        var r = GronReader(data)
        let obj = try OptSingleBooleanCodec.decode(r)
        var w = GronWriter()
        OptSingleBooleanCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBoolean.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleBoolean gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleInt8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleInt8Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleInt8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt8.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt8Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt8.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleInt8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt8Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleInt8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt8.gron"))
        var r = GronReader(data)
        let obj = try OptSingleInt8Codec.decode(r)
        var w = GronWriter()
        OptSingleInt8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt8.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleInt8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleInt16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleInt16Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleInt16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt16.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt16Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt16.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleInt16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt16Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleInt16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt16.gron"))
        var r = GronReader(data)
        let obj = try OptSingleInt16Codec.decode(r)
        var w = GronWriter()
        OptSingleInt16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt16.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleInt16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleInt32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleInt32Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleInt32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt32.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt32Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt32.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleInt32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt32Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleInt32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt32.gron"))
        var r = GronReader(data)
        let obj = try OptSingleInt32Codec.decode(r)
        var w = GronWriter()
        OptSingleInt32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt32.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleInt32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleInt64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleInt64Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleInt64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt64.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt64Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt64.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleInt64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleInt64Codec.decode(r)
        var w = JsonWriter()
        OptSingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleInt64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleInt64.gron"))
        var r = GronReader(data)
        let obj = try OptSingleInt64Codec.decode(r)
        var w = GronWriter()
        OptSingleInt64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleInt64.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleInt64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleUint8() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint8.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleUint8Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint8.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleUint8 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint8.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint8Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint8.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleUint8 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint8.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint8Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint8.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleUint8 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint8.gron"))
        var r = GronReader(data)
        let obj = try OptSingleUint8Codec.decode(r)
        var w = GronWriter()
        OptSingleUint8Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint8.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleUint8 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleUint16() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint16.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleUint16Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint16.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleUint16 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint16.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint16Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint16.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleUint16 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint16.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint16Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint16.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleUint16 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint16.gron"))
        var r = GronReader(data)
        let obj = try OptSingleUint16Codec.decode(r)
        var w = GronWriter()
        OptSingleUint16Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint16.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleUint16 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleUint32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleUint32Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleUint32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint32.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint32Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint32.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleUint32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint32Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleUint32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint32.gron"))
        var r = GronReader(data)
        let obj = try OptSingleUint32Codec.decode(r)
        var w = GronWriter()
        OptSingleUint32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint32.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleUint32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleUint64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleUint64Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleUint64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint64.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint64Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint64.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleUint64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleUint64Codec.decode(r)
        var w = JsonWriter()
        OptSingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleUint64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleUint64.gron"))
        var r = GronReader(data)
        let obj = try OptSingleUint64Codec.decode(r)
        var w = GronWriter()
        OptSingleUint64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleUint64.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleUint64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleFloat32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleFloat32Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleFloat32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat32.json"))
        var r = JsonReader(data)
        let obj = try OptSingleFloat32Codec.decode(r)
        var w = JsonWriter()
        OptSingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat32.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleFloat32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleFloat32Codec.decode(r)
        var w = JsonWriter()
        OptSingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleFloat32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat32.gron"))
        var r = GronReader(data)
        let obj = try OptSingleFloat32Codec.decode(r)
        var w = GronWriter()
        OptSingleFloat32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat32.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleFloat32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleFloat64() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat64.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleFloat64Codec.decode(r)
        var w = MsgPackWriter()
        OptSingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat64.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleFloat64 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat64.json"))
        var r = JsonReader(data)
        let obj = try OptSingleFloat64Codec.decode(r)
        var w = JsonWriter()
        OptSingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat64.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleFloat64 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat64.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleFloat64Codec.decode(r)
        var w = JsonWriter()
        OptSingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat64.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleFloat64 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleFloat64.gron"))
        var r = GronReader(data)
        let obj = try OptSingleFloat64Codec.decode(r)
        var w = GronWriter()
        OptSingleFloat64Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleFloat64.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleFloat64 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptSingleBytes() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBytes.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptSingleBytesCodec.decode(r)
        var w = MsgPackWriter()
        OptSingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBytes.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptSingleBytes msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBytes.json"))
        var r = JsonReader(data)
        let obj = try OptSingleBytesCodec.decode(r)
        var w = JsonWriter()
        OptSingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBytes.json"))
        jsonOk = true
    } catch {
        print("FAIL OptSingleBytes json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBytes.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptSingleBytesCodec.decode(r)
        var w = JsonWriter()
        OptSingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBytes.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptSingleBytes unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptSingleBytes.gron"))
        var r = GronReader(data)
        let obj = try OptSingleBytesCodec.decode(r)
        var w = GronWriter()
        OptSingleBytesCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptSingleBytes.gron"))
        gronOk = true
    } catch {
        print("FAIL OptSingleBytes gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

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

func testModel_Five01() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five01.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five01Codec.decode(r)
        var w = MsgPackWriter()
        Five01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five01.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five01 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five01.json"))
        var r = JsonReader(data)
        let obj = try Five01Codec.decode(r)
        var w = JsonWriter()
        Five01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five01.json"))
        jsonOk = true
    } catch {
        print("FAIL Five01 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five01.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five01Codec.decode(r)
        var w = JsonWriter()
        Five01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five01.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five01 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five01.gron"))
        var r = GronReader(data)
        let obj = try Five01Codec.decode(r)
        var w = GronWriter()
        Five01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five01.gron"))
        gronOk = true
    } catch {
        print("FAIL Five01 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five02() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five02.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five02Codec.decode(r)
        var w = MsgPackWriter()
        Five02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five02.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five02 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five02.json"))
        var r = JsonReader(data)
        let obj = try Five02Codec.decode(r)
        var w = JsonWriter()
        Five02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five02.json"))
        jsonOk = true
    } catch {
        print("FAIL Five02 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five02.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five02Codec.decode(r)
        var w = JsonWriter()
        Five02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five02.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five02 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five02.gron"))
        var r = GronReader(data)
        let obj = try Five02Codec.decode(r)
        var w = GronWriter()
        Five02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five02.gron"))
        gronOk = true
    } catch {
        print("FAIL Five02 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five03() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five03.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five03Codec.decode(r)
        var w = MsgPackWriter()
        Five03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five03.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five03 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five03.json"))
        var r = JsonReader(data)
        let obj = try Five03Codec.decode(r)
        var w = JsonWriter()
        Five03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five03.json"))
        jsonOk = true
    } catch {
        print("FAIL Five03 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five03.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five03Codec.decode(r)
        var w = JsonWriter()
        Five03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five03.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five03 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five03.gron"))
        var r = GronReader(data)
        let obj = try Five03Codec.decode(r)
        var w = GronWriter()
        Five03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five03.gron"))
        gronOk = true
    } catch {
        print("FAIL Five03 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five04() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five04.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five04Codec.decode(r)
        var w = MsgPackWriter()
        Five04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five04.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five04 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five04.json"))
        var r = JsonReader(data)
        let obj = try Five04Codec.decode(r)
        var w = JsonWriter()
        Five04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five04.json"))
        jsonOk = true
    } catch {
        print("FAIL Five04 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five04.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five04Codec.decode(r)
        var w = JsonWriter()
        Five04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five04.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five04 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five04.gron"))
        var r = GronReader(data)
        let obj = try Five04Codec.decode(r)
        var w = GronWriter()
        Five04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five04.gron"))
        gronOk = true
    } catch {
        print("FAIL Five04 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five05() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five05.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five05Codec.decode(r)
        var w = MsgPackWriter()
        Five05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five05.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five05 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five05.json"))
        var r = JsonReader(data)
        let obj = try Five05Codec.decode(r)
        var w = JsonWriter()
        Five05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five05.json"))
        jsonOk = true
    } catch {
        print("FAIL Five05 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five05.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five05Codec.decode(r)
        var w = JsonWriter()
        Five05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five05.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five05 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five05.gron"))
        var r = GronReader(data)
        let obj = try Five05Codec.decode(r)
        var w = GronWriter()
        Five05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five05.gron"))
        gronOk = true
    } catch {
        print("FAIL Five05 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five06() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five06.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five06Codec.decode(r)
        var w = MsgPackWriter()
        Five06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five06.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five06 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five06.json"))
        var r = JsonReader(data)
        let obj = try Five06Codec.decode(r)
        var w = JsonWriter()
        Five06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five06.json"))
        jsonOk = true
    } catch {
        print("FAIL Five06 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five06.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five06Codec.decode(r)
        var w = JsonWriter()
        Five06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five06.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five06 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five06.gron"))
        var r = GronReader(data)
        let obj = try Five06Codec.decode(r)
        var w = GronWriter()
        Five06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five06.gron"))
        gronOk = true
    } catch {
        print("FAIL Five06 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five07() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five07.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five07Codec.decode(r)
        var w = MsgPackWriter()
        Five07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five07.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five07 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five07.json"))
        var r = JsonReader(data)
        let obj = try Five07Codec.decode(r)
        var w = JsonWriter()
        Five07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five07.json"))
        jsonOk = true
    } catch {
        print("FAIL Five07 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five07.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five07Codec.decode(r)
        var w = JsonWriter()
        Five07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five07.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five07 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five07.gron"))
        var r = GronReader(data)
        let obj = try Five07Codec.decode(r)
        var w = GronWriter()
        Five07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five07.gron"))
        gronOk = true
    } catch {
        print("FAIL Five07 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five08() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five08.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five08Codec.decode(r)
        var w = MsgPackWriter()
        Five08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five08.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five08 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five08.json"))
        var r = JsonReader(data)
        let obj = try Five08Codec.decode(r)
        var w = JsonWriter()
        Five08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five08.json"))
        jsonOk = true
    } catch {
        print("FAIL Five08 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five08.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five08Codec.decode(r)
        var w = JsonWriter()
        Five08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five08.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five08 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five08.gron"))
        var r = GronReader(data)
        let obj = try Five08Codec.decode(r)
        var w = GronWriter()
        Five08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five08.gron"))
        gronOk = true
    } catch {
        print("FAIL Five08 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five09() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five09.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five09Codec.decode(r)
        var w = MsgPackWriter()
        Five09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five09.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five09 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five09.json"))
        var r = JsonReader(data)
        let obj = try Five09Codec.decode(r)
        var w = JsonWriter()
        Five09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five09.json"))
        jsonOk = true
    } catch {
        print("FAIL Five09 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five09.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five09Codec.decode(r)
        var w = JsonWriter()
        Five09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five09.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five09 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five09.gron"))
        var r = GronReader(data)
        let obj = try Five09Codec.decode(r)
        var w = GronWriter()
        Five09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five09.gron"))
        gronOk = true
    } catch {
        print("FAIL Five09 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Five10() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five10.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Five10Codec.decode(r)
        var w = MsgPackWriter()
        Five10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five10.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Five10 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five10.json"))
        var r = JsonReader(data)
        let obj = try Five10Codec.decode(r)
        var w = JsonWriter()
        Five10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five10.json"))
        jsonOk = true
    } catch {
        print("FAIL Five10 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five10.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Five10Codec.decode(r)
        var w = JsonWriter()
        Five10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five10.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Five10 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Five10.gron"))
        var r = GronReader(data)
        let obj = try Five10Codec.decode(r)
        var w = GronWriter()
        Five10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Five10.gron"))
        gronOk = true
    } catch {
        print("FAIL Five10 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ten01() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten01.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Ten01Codec.decode(r)
        var w = MsgPackWriter()
        Ten01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten01.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ten01 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten01.json"))
        var r = JsonReader(data)
        let obj = try Ten01Codec.decode(r)
        var w = JsonWriter()
        Ten01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten01.json"))
        jsonOk = true
    } catch {
        print("FAIL Ten01 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten01.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Ten01Codec.decode(r)
        var w = JsonWriter()
        Ten01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten01.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ten01 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten01.gron"))
        var r = GronReader(data)
        let obj = try Ten01Codec.decode(r)
        var w = GronWriter()
        Ten01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten01.gron"))
        gronOk = true
    } catch {
        print("FAIL Ten01 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ten02() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten02.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Ten02Codec.decode(r)
        var w = MsgPackWriter()
        Ten02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten02.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ten02 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten02.json"))
        var r = JsonReader(data)
        let obj = try Ten02Codec.decode(r)
        var w = JsonWriter()
        Ten02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten02.json"))
        jsonOk = true
    } catch {
        print("FAIL Ten02 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten02.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Ten02Codec.decode(r)
        var w = JsonWriter()
        Ten02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten02.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ten02 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten02.gron"))
        var r = GronReader(data)
        let obj = try Ten02Codec.decode(r)
        var w = GronWriter()
        Ten02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten02.gron"))
        gronOk = true
    } catch {
        print("FAIL Ten02 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ten03() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten03.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Ten03Codec.decode(r)
        var w = MsgPackWriter()
        Ten03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten03.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ten03 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten03.json"))
        var r = JsonReader(data)
        let obj = try Ten03Codec.decode(r)
        var w = JsonWriter()
        Ten03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten03.json"))
        jsonOk = true
    } catch {
        print("FAIL Ten03 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten03.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Ten03Codec.decode(r)
        var w = JsonWriter()
        Ten03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten03.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ten03 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten03.gron"))
        var r = GronReader(data)
        let obj = try Ten03Codec.decode(r)
        var w = GronWriter()
        Ten03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten03.gron"))
        gronOk = true
    } catch {
        print("FAIL Ten03 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ten04() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten04.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Ten04Codec.decode(r)
        var w = MsgPackWriter()
        Ten04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten04.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ten04 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten04.json"))
        var r = JsonReader(data)
        let obj = try Ten04Codec.decode(r)
        var w = JsonWriter()
        Ten04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten04.json"))
        jsonOk = true
    } catch {
        print("FAIL Ten04 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten04.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Ten04Codec.decode(r)
        var w = JsonWriter()
        Ten04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten04.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ten04 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten04.gron"))
        var r = GronReader(data)
        let obj = try Ten04Codec.decode(r)
        var w = GronWriter()
        Ten04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten04.gron"))
        gronOk = true
    } catch {
        print("FAIL Ten04 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ten05() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten05.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Ten05Codec.decode(r)
        var w = MsgPackWriter()
        Ten05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten05.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ten05 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten05.json"))
        var r = JsonReader(data)
        let obj = try Ten05Codec.decode(r)
        var w = JsonWriter()
        Ten05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten05.json"))
        jsonOk = true
    } catch {
        print("FAIL Ten05 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten05.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Ten05Codec.decode(r)
        var w = JsonWriter()
        Ten05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten05.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ten05 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ten05.gron"))
        var r = GronReader(data)
        let obj = try Ten05Codec.decode(r)
        var w = GronWriter()
        Ten05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ten05.gron"))
        gronOk = true
    } catch {
        print("FAIL Ten05 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

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

func testModel_NestInner() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestInner.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestInnerCodec.decode(r)
        var w = MsgPackWriter()
        NestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestInner.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestInner msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestInner.json"))
        var r = JsonReader(data)
        let obj = try NestInnerCodec.decode(r)
        var w = JsonWriter()
        NestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestInner.json"))
        jsonOk = true
    } catch {
        print("FAIL NestInner json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestInner.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestInnerCodec.decode(r)
        var w = JsonWriter()
        NestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestInner.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestInner unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestInner.gron"))
        var r = GronReader(data)
        let obj = try NestInnerCodec.decode(r)
        var w = GronWriter()
        NestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestInner.gron"))
        gronOk = true
    } catch {
        print("FAIL NestInner gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestCoord() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestCoord.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestCoordCodec.decode(r)
        var w = MsgPackWriter()
        NestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestCoord.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestCoord msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestCoord.json"))
        var r = JsonReader(data)
        let obj = try NestCoordCodec.decode(r)
        var w = JsonWriter()
        NestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestCoord.json"))
        jsonOk = true
    } catch {
        print("FAIL NestCoord json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestCoord.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestCoordCodec.decode(r)
        var w = JsonWriter()
        NestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestCoord.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestCoord unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestCoord.gron"))
        var r = GronReader(data)
        let obj = try NestCoordCodec.decode(r)
        var w = GronWriter()
        NestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestCoord.gron"))
        gronOk = true
    } catch {
        print("FAIL NestCoord gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestIdVal() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestIdVal.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestIdValCodec.decode(r)
        var w = MsgPackWriter()
        NestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestIdVal.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestIdVal msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestIdVal.json"))
        var r = JsonReader(data)
        let obj = try NestIdValCodec.decode(r)
        var w = JsonWriter()
        NestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestIdVal.json"))
        jsonOk = true
    } catch {
        print("FAIL NestIdVal json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestIdVal.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestIdValCodec.decode(r)
        var w = JsonWriter()
        NestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestIdVal.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestIdVal unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestIdVal.gron"))
        var r = GronReader(data)
        let obj = try NestIdValCodec.decode(r)
        var w = GronWriter()
        NestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestIdVal.gron"))
        gronOk = true
    } catch {
        print("FAIL NestIdVal gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestLabel() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestLabel.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestLabelCodec.decode(r)
        var w = MsgPackWriter()
        NestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestLabel.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestLabel msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestLabel.json"))
        var r = JsonReader(data)
        let obj = try NestLabelCodec.decode(r)
        var w = JsonWriter()
        NestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestLabel.json"))
        jsonOk = true
    } catch {
        print("FAIL NestLabel json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestLabel.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestLabelCodec.decode(r)
        var w = JsonWriter()
        NestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestLabel.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestLabel unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestLabel.gron"))
        var r = GronReader(data)
        let obj = try NestLabelCodec.decode(r)
        var w = GronWriter()
        NestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestLabel.gron"))
        gronOk = true
    } catch {
        print("FAIL NestLabel gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestMoney() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestMoney.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestMoneyCodec.decode(r)
        var w = MsgPackWriter()
        NestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestMoney.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestMoney msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestMoney.json"))
        var r = JsonReader(data)
        let obj = try NestMoneyCodec.decode(r)
        var w = JsonWriter()
        NestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestMoney.json"))
        jsonOk = true
    } catch {
        print("FAIL NestMoney json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestMoney.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestMoneyCodec.decode(r)
        var w = JsonWriter()
        NestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestMoney.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestMoney unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestMoney.gron"))
        var r = GronReader(data)
        let obj = try NestMoneyCodec.decode(r)
        var w = GronWriter()
        NestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestMoney.gron"))
        gronOk = true
    } catch {
        print("FAIL NestMoney gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestRange32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestRange32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestRange32Codec.decode(r)
        var w = MsgPackWriter()
        NestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestRange32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestRange32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestRange32.json"))
        var r = JsonReader(data)
        let obj = try NestRange32Codec.decode(r)
        var w = JsonWriter()
        NestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestRange32.json"))
        jsonOk = true
    } catch {
        print("FAIL NestRange32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestRange32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestRange32Codec.decode(r)
        var w = JsonWriter()
        NestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestRange32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestRange32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestRange32.gron"))
        var r = GronReader(data)
        let obj = try NestRange32Codec.decode(r)
        var w = GronWriter()
        NestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestRange32.gron"))
        gronOk = true
    } catch {
        print("FAIL NestRange32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestAddr() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestAddr.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestAddrCodec.decode(r)
        var w = MsgPackWriter()
        NestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestAddr.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestAddr msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestAddr.json"))
        var r = JsonReader(data)
        let obj = try NestAddrCodec.decode(r)
        var w = JsonWriter()
        NestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestAddr.json"))
        jsonOk = true
    } catch {
        print("FAIL NestAddr json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestAddr.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestAddrCodec.decode(r)
        var w = JsonWriter()
        NestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestAddr.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestAddr unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestAddr.gron"))
        var r = GronReader(data)
        let obj = try NestAddrCodec.decode(r)
        var w = GronWriter()
        NestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestAddr.gron"))
        gronOk = true
    } catch {
        print("FAIL NestAddr gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestPoint3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestPoint3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestPoint3Codec.decode(r)
        var w = MsgPackWriter()
        NestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestPoint3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestPoint3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestPoint3.json"))
        var r = JsonReader(data)
        let obj = try NestPoint3Codec.decode(r)
        var w = JsonWriter()
        NestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestPoint3.json"))
        jsonOk = true
    } catch {
        print("FAIL NestPoint3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestPoint3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestPoint3Codec.decode(r)
        var w = JsonWriter()
        NestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestPoint3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestPoint3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestPoint3.gron"))
        var r = GronReader(data)
        let obj = try NestPoint3Codec.decode(r)
        var w = GronWriter()
        NestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestPoint3.gron"))
        gronOk = true
    } catch {
        print("FAIL NestPoint3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestInner() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestInner.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestInnerCodec.decode(r)
        var w = MsgPackWriter()
        OptNestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestInner.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestInner msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestInner.json"))
        var r = JsonReader(data)
        let obj = try OptNestInnerCodec.decode(r)
        var w = JsonWriter()
        OptNestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestInner.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestInner json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestInner.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestInnerCodec.decode(r)
        var w = JsonWriter()
        OptNestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestInner.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestInner unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestInner.gron"))
        var r = GronReader(data)
        let obj = try OptNestInnerCodec.decode(r)
        var w = GronWriter()
        OptNestInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestInner.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestInner gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestCoord() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestCoord.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestCoordCodec.decode(r)
        var w = MsgPackWriter()
        OptNestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestCoord.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestCoord msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestCoord.json"))
        var r = JsonReader(data)
        let obj = try OptNestCoordCodec.decode(r)
        var w = JsonWriter()
        OptNestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestCoord.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestCoord json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestCoord.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestCoordCodec.decode(r)
        var w = JsonWriter()
        OptNestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestCoord.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestCoord unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestCoord.gron"))
        var r = GronReader(data)
        let obj = try OptNestCoordCodec.decode(r)
        var w = GronWriter()
        OptNestCoordCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestCoord.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestCoord gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestIdVal() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestIdVal.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestIdValCodec.decode(r)
        var w = MsgPackWriter()
        OptNestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestIdVal.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestIdVal msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestIdVal.json"))
        var r = JsonReader(data)
        let obj = try OptNestIdValCodec.decode(r)
        var w = JsonWriter()
        OptNestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestIdVal.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestIdVal json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestIdVal.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestIdValCodec.decode(r)
        var w = JsonWriter()
        OptNestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestIdVal.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestIdVal unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestIdVal.gron"))
        var r = GronReader(data)
        let obj = try OptNestIdValCodec.decode(r)
        var w = GronWriter()
        OptNestIdValCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestIdVal.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestIdVal gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestLabel() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestLabel.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestLabelCodec.decode(r)
        var w = MsgPackWriter()
        OptNestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestLabel.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestLabel msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestLabel.json"))
        var r = JsonReader(data)
        let obj = try OptNestLabelCodec.decode(r)
        var w = JsonWriter()
        OptNestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestLabel.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestLabel json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestLabel.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestLabelCodec.decode(r)
        var w = JsonWriter()
        OptNestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestLabel.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestLabel unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestLabel.gron"))
        var r = GronReader(data)
        let obj = try OptNestLabelCodec.decode(r)
        var w = GronWriter()
        OptNestLabelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestLabel.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestLabel gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestMoney() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestMoney.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestMoneyCodec.decode(r)
        var w = MsgPackWriter()
        OptNestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestMoney.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestMoney msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestMoney.json"))
        var r = JsonReader(data)
        let obj = try OptNestMoneyCodec.decode(r)
        var w = JsonWriter()
        OptNestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestMoney.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestMoney json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestMoney.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestMoneyCodec.decode(r)
        var w = JsonWriter()
        OptNestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestMoney.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestMoney unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestMoney.gron"))
        var r = GronReader(data)
        let obj = try OptNestMoneyCodec.decode(r)
        var w = GronWriter()
        OptNestMoneyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestMoney.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestMoney gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestRange32() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestRange32.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestRange32Codec.decode(r)
        var w = MsgPackWriter()
        OptNestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestRange32.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestRange32 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestRange32.json"))
        var r = JsonReader(data)
        let obj = try OptNestRange32Codec.decode(r)
        var w = JsonWriter()
        OptNestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestRange32.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestRange32 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestRange32.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestRange32Codec.decode(r)
        var w = JsonWriter()
        OptNestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestRange32.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestRange32 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestRange32.gron"))
        var r = GronReader(data)
        let obj = try OptNestRange32Codec.decode(r)
        var w = GronWriter()
        OptNestRange32Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestRange32.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestRange32 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestAddr() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestAddr.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestAddrCodec.decode(r)
        var w = MsgPackWriter()
        OptNestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestAddr.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestAddr msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestAddr.json"))
        var r = JsonReader(data)
        let obj = try OptNestAddrCodec.decode(r)
        var w = JsonWriter()
        OptNestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestAddr.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestAddr json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestAddr.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestAddrCodec.decode(r)
        var w = JsonWriter()
        OptNestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestAddr.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestAddr unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestAddr.gron"))
        var r = GronReader(data)
        let obj = try OptNestAddrCodec.decode(r)
        var w = GronWriter()
        OptNestAddrCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestAddr.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestAddr gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptNestPoint3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestPoint3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptNestPoint3Codec.decode(r)
        var w = MsgPackWriter()
        OptNestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestPoint3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptNestPoint3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestPoint3.json"))
        var r = JsonReader(data)
        let obj = try OptNestPoint3Codec.decode(r)
        var w = JsonWriter()
        OptNestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestPoint3.json"))
        jsonOk = true
    } catch {
        print("FAIL OptNestPoint3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestPoint3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptNestPoint3Codec.decode(r)
        var w = JsonWriter()
        OptNestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestPoint3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptNestPoint3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptNestPoint3.gron"))
        var r = GronReader(data)
        let obj = try OptNestPoint3Codec.decode(r)
        var w = GronWriter()
        OptNestPoint3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptNestPoint3.gron"))
        gronOk = true
    } catch {
        print("FAIL OptNestPoint3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ModelArr1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ModelArr1Codec.decode(r)
        var w = MsgPackWriter()
        ModelArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ModelArr1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr1.json"))
        var r = JsonReader(data)
        let obj = try ModelArr1Codec.decode(r)
        var w = JsonWriter()
        ModelArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr1.json"))
        jsonOk = true
    } catch {
        print("FAIL ModelArr1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ModelArr1Codec.decode(r)
        var w = JsonWriter()
        ModelArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ModelArr1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr1.gron"))
        var r = GronReader(data)
        let obj = try ModelArr1Codec.decode(r)
        var w = GronWriter()
        ModelArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr1.gron"))
        gronOk = true
    } catch {
        print("FAIL ModelArr1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ModelArr2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ModelArr2Codec.decode(r)
        var w = MsgPackWriter()
        ModelArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ModelArr2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr2.json"))
        var r = JsonReader(data)
        let obj = try ModelArr2Codec.decode(r)
        var w = JsonWriter()
        ModelArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr2.json"))
        jsonOk = true
    } catch {
        print("FAIL ModelArr2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ModelArr2Codec.decode(r)
        var w = JsonWriter()
        ModelArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ModelArr2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr2.gron"))
        var r = GronReader(data)
        let obj = try ModelArr2Codec.decode(r)
        var w = GronWriter()
        ModelArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr2.gron"))
        gronOk = true
    } catch {
        print("FAIL ModelArr2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ModelArr3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ModelArr3Codec.decode(r)
        var w = MsgPackWriter()
        ModelArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ModelArr3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr3.json"))
        var r = JsonReader(data)
        let obj = try ModelArr3Codec.decode(r)
        var w = JsonWriter()
        ModelArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr3.json"))
        jsonOk = true
    } catch {
        print("FAIL ModelArr3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ModelArr3Codec.decode(r)
        var w = JsonWriter()
        ModelArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ModelArr3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr3.gron"))
        var r = GronReader(data)
        let obj = try ModelArr3Codec.decode(r)
        var w = GronWriter()
        ModelArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr3.gron"))
        gronOk = true
    } catch {
        print("FAIL ModelArr3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ModelArr4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ModelArr4Codec.decode(r)
        var w = MsgPackWriter()
        ModelArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ModelArr4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr4.json"))
        var r = JsonReader(data)
        let obj = try ModelArr4Codec.decode(r)
        var w = JsonWriter()
        ModelArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr4.json"))
        jsonOk = true
    } catch {
        print("FAIL ModelArr4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ModelArr4Codec.decode(r)
        var w = JsonWriter()
        ModelArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ModelArr4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr4.gron"))
        var r = GronReader(data)
        let obj = try ModelArr4Codec.decode(r)
        var w = GronWriter()
        ModelArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr4.gron"))
        gronOk = true
    } catch {
        print("FAIL ModelArr4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ModelArr5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ModelArr5Codec.decode(r)
        var w = MsgPackWriter()
        ModelArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ModelArr5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr5.json"))
        var r = JsonReader(data)
        let obj = try ModelArr5Codec.decode(r)
        var w = JsonWriter()
        ModelArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr5.json"))
        jsonOk = true
    } catch {
        print("FAIL ModelArr5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ModelArr5Codec.decode(r)
        var w = JsonWriter()
        ModelArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ModelArr5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ModelArr5.gron"))
        var r = GronReader(data)
        let obj = try ModelArr5Codec.decode(r)
        var w = GronWriter()
        ModelArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ModelArr5.gron"))
        gronOk = true
    } catch {
        print("FAIL ModelArr5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix01() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix01.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix01Codec.decode(r)
        var w = MsgPackWriter()
        Mix01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix01.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix01 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix01.json"))
        var r = JsonReader(data)
        let obj = try Mix01Codec.decode(r)
        var w = JsonWriter()
        Mix01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix01.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix01 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix01.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix01Codec.decode(r)
        var w = JsonWriter()
        Mix01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix01.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix01 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix01.gron"))
        var r = GronReader(data)
        let obj = try Mix01Codec.decode(r)
        var w = GronWriter()
        Mix01Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix01.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix01 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix02() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix02.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix02Codec.decode(r)
        var w = MsgPackWriter()
        Mix02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix02.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix02 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix02.json"))
        var r = JsonReader(data)
        let obj = try Mix02Codec.decode(r)
        var w = JsonWriter()
        Mix02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix02.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix02 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix02.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix02Codec.decode(r)
        var w = JsonWriter()
        Mix02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix02.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix02 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix02.gron"))
        var r = GronReader(data)
        let obj = try Mix02Codec.decode(r)
        var w = GronWriter()
        Mix02Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix02.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix02 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix03() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix03.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix03Codec.decode(r)
        var w = MsgPackWriter()
        Mix03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix03.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix03 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix03.json"))
        var r = JsonReader(data)
        let obj = try Mix03Codec.decode(r)
        var w = JsonWriter()
        Mix03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix03.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix03 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix03.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix03Codec.decode(r)
        var w = JsonWriter()
        Mix03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix03.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix03 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix03.gron"))
        var r = GronReader(data)
        let obj = try Mix03Codec.decode(r)
        var w = GronWriter()
        Mix03Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix03.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix03 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix04() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix04.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix04Codec.decode(r)
        var w = MsgPackWriter()
        Mix04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix04.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix04 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix04.json"))
        var r = JsonReader(data)
        let obj = try Mix04Codec.decode(r)
        var w = JsonWriter()
        Mix04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix04.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix04 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix04.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix04Codec.decode(r)
        var w = JsonWriter()
        Mix04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix04.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix04 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix04.gron"))
        var r = GronReader(data)
        let obj = try Mix04Codec.decode(r)
        var w = GronWriter()
        Mix04Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix04.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix04 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix05() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix05.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix05Codec.decode(r)
        var w = MsgPackWriter()
        Mix05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix05.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix05 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix05.json"))
        var r = JsonReader(data)
        let obj = try Mix05Codec.decode(r)
        var w = JsonWriter()
        Mix05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix05.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix05 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix05.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix05Codec.decode(r)
        var w = JsonWriter()
        Mix05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix05.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix05 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix05.gron"))
        var r = GronReader(data)
        let obj = try Mix05Codec.decode(r)
        var w = GronWriter()
        Mix05Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix05.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix05 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix06() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix06.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix06Codec.decode(r)
        var w = MsgPackWriter()
        Mix06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix06.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix06 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix06.json"))
        var r = JsonReader(data)
        let obj = try Mix06Codec.decode(r)
        var w = JsonWriter()
        Mix06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix06.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix06 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix06.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix06Codec.decode(r)
        var w = JsonWriter()
        Mix06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix06.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix06 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix06.gron"))
        var r = GronReader(data)
        let obj = try Mix06Codec.decode(r)
        var w = GronWriter()
        Mix06Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix06.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix06 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix07() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix07.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix07Codec.decode(r)
        var w = MsgPackWriter()
        Mix07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix07.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix07 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix07.json"))
        var r = JsonReader(data)
        let obj = try Mix07Codec.decode(r)
        var w = JsonWriter()
        Mix07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix07.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix07 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix07.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix07Codec.decode(r)
        var w = JsonWriter()
        Mix07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix07.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix07 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix07.gron"))
        var r = GronReader(data)
        let obj = try Mix07Codec.decode(r)
        var w = GronWriter()
        Mix07Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix07.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix07 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix08() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix08.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix08Codec.decode(r)
        var w = MsgPackWriter()
        Mix08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix08.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix08 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix08.json"))
        var r = JsonReader(data)
        let obj = try Mix08Codec.decode(r)
        var w = JsonWriter()
        Mix08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix08.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix08 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix08.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix08Codec.decode(r)
        var w = JsonWriter()
        Mix08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix08.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix08 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix08.gron"))
        var r = GronReader(data)
        let obj = try Mix08Codec.decode(r)
        var w = GronWriter()
        Mix08Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix08.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix08 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix09() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix09.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix09Codec.decode(r)
        var w = MsgPackWriter()
        Mix09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix09.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix09 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix09.json"))
        var r = JsonReader(data)
        let obj = try Mix09Codec.decode(r)
        var w = JsonWriter()
        Mix09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix09.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix09 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix09.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix09Codec.decode(r)
        var w = JsonWriter()
        Mix09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix09.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix09 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix09.gron"))
        var r = GronReader(data)
        let obj = try Mix09Codec.decode(r)
        var w = GronWriter()
        Mix09Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix09.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix09 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix10() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix10.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix10Codec.decode(r)
        var w = MsgPackWriter()
        Mix10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix10.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix10 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix10.json"))
        var r = JsonReader(data)
        let obj = try Mix10Codec.decode(r)
        var w = JsonWriter()
        Mix10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix10.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix10 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix10.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix10Codec.decode(r)
        var w = JsonWriter()
        Mix10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix10.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix10 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix10.gron"))
        var r = GronReader(data)
        let obj = try Mix10Codec.decode(r)
        var w = GronWriter()
        Mix10Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix10.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix10 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix11() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix11.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix11Codec.decode(r)
        var w = MsgPackWriter()
        Mix11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix11.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix11 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix11.json"))
        var r = JsonReader(data)
        let obj = try Mix11Codec.decode(r)
        var w = JsonWriter()
        Mix11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix11.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix11 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix11.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix11Codec.decode(r)
        var w = JsonWriter()
        Mix11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix11.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix11 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix11.gron"))
        var r = GronReader(data)
        let obj = try Mix11Codec.decode(r)
        var w = GronWriter()
        Mix11Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix11.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix11 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix12() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix12.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix12Codec.decode(r)
        var w = MsgPackWriter()
        Mix12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix12.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix12 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix12.json"))
        var r = JsonReader(data)
        let obj = try Mix12Codec.decode(r)
        var w = JsonWriter()
        Mix12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix12.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix12 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix12.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix12Codec.decode(r)
        var w = JsonWriter()
        Mix12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix12.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix12 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix12.gron"))
        var r = GronReader(data)
        let obj = try Mix12Codec.decode(r)
        var w = GronWriter()
        Mix12Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix12.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix12 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix13() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix13.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix13Codec.decode(r)
        var w = MsgPackWriter()
        Mix13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix13.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix13 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix13.json"))
        var r = JsonReader(data)
        let obj = try Mix13Codec.decode(r)
        var w = JsonWriter()
        Mix13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix13.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix13 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix13.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix13Codec.decode(r)
        var w = JsonWriter()
        Mix13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix13.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix13 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix13.gron"))
        var r = GronReader(data)
        let obj = try Mix13Codec.decode(r)
        var w = GronWriter()
        Mix13Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix13.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix13 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix14() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix14.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix14Codec.decode(r)
        var w = MsgPackWriter()
        Mix14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix14.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix14 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix14.json"))
        var r = JsonReader(data)
        let obj = try Mix14Codec.decode(r)
        var w = JsonWriter()
        Mix14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix14.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix14 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix14.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix14Codec.decode(r)
        var w = JsonWriter()
        Mix14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix14.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix14 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix14.gron"))
        var r = GronReader(data)
        let obj = try Mix14Codec.decode(r)
        var w = GronWriter()
        Mix14Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix14.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix14 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Mix15() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix15.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Mix15Codec.decode(r)
        var w = MsgPackWriter()
        Mix15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix15.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Mix15 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix15.json"))
        var r = JsonReader(data)
        let obj = try Mix15Codec.decode(r)
        var w = JsonWriter()
        Mix15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix15.json"))
        jsonOk = true
    } catch {
        print("FAIL Mix15 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix15.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Mix15Codec.decode(r)
        var w = JsonWriter()
        Mix15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix15.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Mix15 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Mix15.gron"))
        var r = GronReader(data)
        let obj = try Mix15Codec.decode(r)
        var w = GronWriter()
        Mix15Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Mix15.gron"))
        gronOk = true
    } catch {
        print("FAIL Mix15 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_AllOpt1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try AllOpt1Codec.decode(r)
        var w = MsgPackWriter()
        AllOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL AllOpt1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt1.json"))
        var r = JsonReader(data)
        let obj = try AllOpt1Codec.decode(r)
        var w = JsonWriter()
        AllOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt1.json"))
        jsonOk = true
    } catch {
        print("FAIL AllOpt1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try AllOpt1Codec.decode(r)
        var w = JsonWriter()
        AllOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL AllOpt1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt1.gron"))
        var r = GronReader(data)
        let obj = try AllOpt1Codec.decode(r)
        var w = GronWriter()
        AllOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt1.gron"))
        gronOk = true
    } catch {
        print("FAIL AllOpt1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_AllOpt2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try AllOpt2Codec.decode(r)
        var w = MsgPackWriter()
        AllOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL AllOpt2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt2.json"))
        var r = JsonReader(data)
        let obj = try AllOpt2Codec.decode(r)
        var w = JsonWriter()
        AllOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt2.json"))
        jsonOk = true
    } catch {
        print("FAIL AllOpt2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try AllOpt2Codec.decode(r)
        var w = JsonWriter()
        AllOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL AllOpt2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt2.gron"))
        var r = GronReader(data)
        let obj = try AllOpt2Codec.decode(r)
        var w = GronWriter()
        AllOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt2.gron"))
        gronOk = true
    } catch {
        print("FAIL AllOpt2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_AllOpt3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try AllOpt3Codec.decode(r)
        var w = MsgPackWriter()
        AllOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL AllOpt3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt3.json"))
        var r = JsonReader(data)
        let obj = try AllOpt3Codec.decode(r)
        var w = JsonWriter()
        AllOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt3.json"))
        jsonOk = true
    } catch {
        print("FAIL AllOpt3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try AllOpt3Codec.decode(r)
        var w = JsonWriter()
        AllOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL AllOpt3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt3.gron"))
        var r = GronReader(data)
        let obj = try AllOpt3Codec.decode(r)
        var w = GronWriter()
        AllOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt3.gron"))
        gronOk = true
    } catch {
        print("FAIL AllOpt3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_AllOpt4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try AllOpt4Codec.decode(r)
        var w = MsgPackWriter()
        AllOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL AllOpt4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt4.json"))
        var r = JsonReader(data)
        let obj = try AllOpt4Codec.decode(r)
        var w = JsonWriter()
        AllOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt4.json"))
        jsonOk = true
    } catch {
        print("FAIL AllOpt4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try AllOpt4Codec.decode(r)
        var w = JsonWriter()
        AllOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL AllOpt4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt4.gron"))
        var r = GronReader(data)
        let obj = try AllOpt4Codec.decode(r)
        var w = GronWriter()
        AllOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt4.gron"))
        gronOk = true
    } catch {
        print("FAIL AllOpt4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_AllOpt5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try AllOpt5Codec.decode(r)
        var w = MsgPackWriter()
        AllOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL AllOpt5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt5.json"))
        var r = JsonReader(data)
        let obj = try AllOpt5Codec.decode(r)
        var w = JsonWriter()
        AllOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt5.json"))
        jsonOk = true
    } catch {
        print("FAIL AllOpt5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try AllOpt5Codec.decode(r)
        var w = JsonWriter()
        AllOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL AllOpt5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/AllOpt5.gron"))
        var r = GronReader(data)
        let obj = try AllOpt5Codec.decode(r)
        var w = GronWriter()
        AllOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/AllOpt5.gron"))
        gronOk = true
    } catch {
        print("FAIL AllOpt5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_RecList() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecList.msgpack"))
        var r = MsgPackReader(data)
        let obj = try RecListCodec.decode(r)
        var w = MsgPackWriter()
        RecListCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecList.msgpack"))
        mpOk = true
    } catch {
        print("FAIL RecList msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecList.json"))
        var r = JsonReader(data)
        let obj = try RecListCodec.decode(r)
        var w = JsonWriter()
        RecListCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecList.json"))
        jsonOk = true
    } catch {
        print("FAIL RecList json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecList.unformatted.json"))
        var r = JsonReader(data)
        let obj = try RecListCodec.decode(r)
        var w = JsonWriter()
        RecListCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecList.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL RecList unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecList.gron"))
        var r = GronReader(data)
        let obj = try RecListCodec.decode(r)
        var w = GronWriter()
        RecListCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecList.gron"))
        gronOk = true
    } catch {
        print("FAIL RecList gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_RecTree() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecTree.msgpack"))
        var r = MsgPackReader(data)
        let obj = try RecTreeCodec.decode(r)
        var w = MsgPackWriter()
        RecTreeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecTree.msgpack"))
        mpOk = true
    } catch {
        print("FAIL RecTree msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecTree.json"))
        var r = JsonReader(data)
        let obj = try RecTreeCodec.decode(r)
        var w = JsonWriter()
        RecTreeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecTree.json"))
        jsonOk = true
    } catch {
        print("FAIL RecTree json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecTree.unformatted.json"))
        var r = JsonReader(data)
        let obj = try RecTreeCodec.decode(r)
        var w = JsonWriter()
        RecTreeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecTree.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL RecTree unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecTree.gron"))
        var r = GronReader(data)
        let obj = try RecTreeCodec.decode(r)
        var w = GronWriter()
        RecTreeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecTree.gron"))
        gronOk = true
    } catch {
        print("FAIL RecTree gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_RecChain() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecChain.msgpack"))
        var r = MsgPackReader(data)
        let obj = try RecChainCodec.decode(r)
        var w = MsgPackWriter()
        RecChainCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecChain.msgpack"))
        mpOk = true
    } catch {
        print("FAIL RecChain msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecChain.json"))
        var r = JsonReader(data)
        let obj = try RecChainCodec.decode(r)
        var w = JsonWriter()
        RecChainCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecChain.json"))
        jsonOk = true
    } catch {
        print("FAIL RecChain json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecChain.unformatted.json"))
        var r = JsonReader(data)
        let obj = try RecChainCodec.decode(r)
        var w = JsonWriter()
        RecChainCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecChain.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL RecChain unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecChain.gron"))
        var r = GronReader(data)
        let obj = try RecChainCodec.decode(r)
        var w = GronWriter()
        RecChainCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecChain.gron"))
        gronOk = true
    } catch {
        print("FAIL RecChain gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_RecWrap() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWrap.msgpack"))
        var r = MsgPackReader(data)
        let obj = try RecWrapCodec.decode(r)
        var w = MsgPackWriter()
        RecWrapCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWrap.msgpack"))
        mpOk = true
    } catch {
        print("FAIL RecWrap msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWrap.json"))
        var r = JsonReader(data)
        let obj = try RecWrapCodec.decode(r)
        var w = JsonWriter()
        RecWrapCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWrap.json"))
        jsonOk = true
    } catch {
        print("FAIL RecWrap json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWrap.unformatted.json"))
        var r = JsonReader(data)
        let obj = try RecWrapCodec.decode(r)
        var w = JsonWriter()
        RecWrapCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWrap.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL RecWrap unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWrap.gron"))
        var r = GronReader(data)
        let obj = try RecWrapCodec.decode(r)
        var w = GronWriter()
        RecWrapCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWrap.gron"))
        gronOk = true
    } catch {
        print("FAIL RecWrap gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_RecWide() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWide.msgpack"))
        var r = MsgPackReader(data)
        let obj = try RecWideCodec.decode(r)
        var w = MsgPackWriter()
        RecWideCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWide.msgpack"))
        mpOk = true
    } catch {
        print("FAIL RecWide msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWide.json"))
        var r = JsonReader(data)
        let obj = try RecWideCodec.decode(r)
        var w = JsonWriter()
        RecWideCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWide.json"))
        jsonOk = true
    } catch {
        print("FAIL RecWide json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWide.unformatted.json"))
        var r = JsonReader(data)
        let obj = try RecWideCodec.decode(r)
        var w = JsonWriter()
        RecWideCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWide.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL RecWide unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/RecWide.gron"))
        var r = GronReader(data)
        let obj = try RecWideCodec.decode(r)
        var w = GronWriter()
        RecWideCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/RecWide.gron"))
        gronOk = true
    } catch {
        print("FAIL RecWide gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Wide20() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide20.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Wide20Codec.decode(r)
        var w = MsgPackWriter()
        Wide20Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide20.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Wide20 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide20.json"))
        var r = JsonReader(data)
        let obj = try Wide20Codec.decode(r)
        var w = JsonWriter()
        Wide20Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide20.json"))
        jsonOk = true
    } catch {
        print("FAIL Wide20 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide20.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Wide20Codec.decode(r)
        var w = JsonWriter()
        Wide20Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide20.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Wide20 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide20.gron"))
        var r = GronReader(data)
        let obj = try Wide20Codec.decode(r)
        var w = GronWriter()
        Wide20Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide20.gron"))
        gronOk = true
    } catch {
        print("FAIL Wide20 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Wide25() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide25.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Wide25Codec.decode(r)
        var w = MsgPackWriter()
        Wide25Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide25.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Wide25 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide25.json"))
        var r = JsonReader(data)
        let obj = try Wide25Codec.decode(r)
        var w = JsonWriter()
        Wide25Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide25.json"))
        jsonOk = true
    } catch {
        print("FAIL Wide25 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide25.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Wide25Codec.decode(r)
        var w = JsonWriter()
        Wide25Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide25.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Wide25 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide25.gron"))
        var r = GronReader(data)
        let obj = try Wide25Codec.decode(r)
        var w = GronWriter()
        Wide25Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide25.gron"))
        gronOk = true
    } catch {
        print("FAIL Wide25 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Wide30() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide30.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Wide30Codec.decode(r)
        var w = MsgPackWriter()
        Wide30Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide30.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Wide30 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide30.json"))
        var r = JsonReader(data)
        let obj = try Wide30Codec.decode(r)
        var w = JsonWriter()
        Wide30Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide30.json"))
        jsonOk = true
    } catch {
        print("FAIL Wide30 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide30.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Wide30Codec.decode(r)
        var w = JsonWriter()
        Wide30Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide30.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Wide30 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide30.gron"))
        var r = GronReader(data)
        let obj = try Wide30Codec.decode(r)
        var w = GronWriter()
        Wide30Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide30.gron"))
        gronOk = true
    } catch {
        print("FAIL Wide30 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Wide35() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide35.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Wide35Codec.decode(r)
        var w = MsgPackWriter()
        Wide35Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide35.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Wide35 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide35.json"))
        var r = JsonReader(data)
        let obj = try Wide35Codec.decode(r)
        var w = JsonWriter()
        Wide35Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide35.json"))
        jsonOk = true
    } catch {
        print("FAIL Wide35 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide35.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Wide35Codec.decode(r)
        var w = JsonWriter()
        Wide35Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide35.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Wide35 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide35.gron"))
        var r = GronReader(data)
        let obj = try Wide35Codec.decode(r)
        var w = GronWriter()
        Wide35Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide35.gron"))
        gronOk = true
    } catch {
        print("FAIL Wide35 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Wide40() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide40.msgpack"))
        var r = MsgPackReader(data)
        let obj = try Wide40Codec.decode(r)
        var w = MsgPackWriter()
        Wide40Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide40.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Wide40 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide40.json"))
        var r = JsonReader(data)
        let obj = try Wide40Codec.decode(r)
        var w = JsonWriter()
        Wide40Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide40.json"))
        jsonOk = true
    } catch {
        print("FAIL Wide40 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide40.unformatted.json"))
        var r = JsonReader(data)
        let obj = try Wide40Codec.decode(r)
        var w = JsonWriter()
        Wide40Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide40.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Wide40 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Wide40.gron"))
        var r = GronReader(data)
        let obj = try Wide40Codec.decode(r)
        var w = GronWriter()
        Wide40Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Wide40.gron"))
        gronOk = true
    } catch {
        print("FAIL Wide40 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeEmpty() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = MsgPackWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeEmpty msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.json"))
        var r = JsonReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeEmpty json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeEmpty unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.gron"))
        var r = GronReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = GronWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeEmpty gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeOneOpt() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = MsgPackWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeOneOpt msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.json"))
        var r = JsonReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = JsonWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeOneOpt json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = JsonWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeOneOpt unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.gron"))
        var r = GronReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = GronWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeOneOpt gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBigNums() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBigNums msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.json"))
        var r = JsonReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = JsonWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBigNums json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = JsonWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBigNums unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.gron"))
        var r = GronReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = GronWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBigNums gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeZeroVals() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = MsgPackWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeZeroVals msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.json"))
        var r = JsonReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = JsonWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeZeroVals json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = JsonWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeZeroVals unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.gron"))
        var r = GronReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = GronWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeZeroVals gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNullable() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNullable msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = JsonWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNullable json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = JsonWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNullable unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.gron"))
        var r = GronReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = GronWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNullable gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNegZero() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNegZero msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.json"))
        var r = JsonReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = JsonWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNegZero json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = JsonWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNegZero unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.gron"))
        var r = GronReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = GronWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNegZero gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNullByte() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNullByte msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = JsonWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNullByte json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = JsonWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNullByte unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.gron"))
        var r = GronReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = GronWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNullByte gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBoundary() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBoundary msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.json"))
        var r = JsonReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBoundary json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBoundary unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.gron"))
        var r = GronReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = GronWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBoundary gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeStrLen() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = MsgPackWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeStrLen msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.json"))
        var r = JsonReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = JsonWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeStrLen json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = JsonWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeStrLen unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.gron"))
        var r = GronReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = GronWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeStrLen gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBytesLen() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBytesLen msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.json"))
        var r = JsonReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = JsonWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBytesLen json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = JsonWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBytesLen unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.gron"))
        var r = GronReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = GronWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBytesLen gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeArrEmpty() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = MsgPackWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeArrEmpty msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeArrEmpty json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeArrEmpty unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.gron"))
        var r = GronReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = GronWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeArrEmpty gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeArrBoundary() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = MsgPackWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeArrBoundary msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeArrBoundary json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeArrBoundary unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.gron"))
        var r = GronReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = GronWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeArrBoundary gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptArr1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptArr1Codec.decode(r)
        var w = MsgPackWriter()
        OptArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptArr1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr1.json"))
        var r = JsonReader(data)
        let obj = try OptArr1Codec.decode(r)
        var w = JsonWriter()
        OptArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr1.json"))
        jsonOk = true
    } catch {
        print("FAIL OptArr1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptArr1Codec.decode(r)
        var w = JsonWriter()
        OptArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptArr1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr1.gron"))
        var r = GronReader(data)
        let obj = try OptArr1Codec.decode(r)
        var w = GronWriter()
        OptArr1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr1.gron"))
        gronOk = true
    } catch {
        print("FAIL OptArr1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptArr2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptArr2Codec.decode(r)
        var w = MsgPackWriter()
        OptArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptArr2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr2.json"))
        var r = JsonReader(data)
        let obj = try OptArr2Codec.decode(r)
        var w = JsonWriter()
        OptArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr2.json"))
        jsonOk = true
    } catch {
        print("FAIL OptArr2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptArr2Codec.decode(r)
        var w = JsonWriter()
        OptArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptArr2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr2.gron"))
        var r = GronReader(data)
        let obj = try OptArr2Codec.decode(r)
        var w = GronWriter()
        OptArr2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr2.gron"))
        gronOk = true
    } catch {
        print("FAIL OptArr2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptArr3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptArr3Codec.decode(r)
        var w = MsgPackWriter()
        OptArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptArr3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr3.json"))
        var r = JsonReader(data)
        let obj = try OptArr3Codec.decode(r)
        var w = JsonWriter()
        OptArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr3.json"))
        jsonOk = true
    } catch {
        print("FAIL OptArr3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptArr3Codec.decode(r)
        var w = JsonWriter()
        OptArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptArr3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr3.gron"))
        var r = GronReader(data)
        let obj = try OptArr3Codec.decode(r)
        var w = GronWriter()
        OptArr3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr3.gron"))
        gronOk = true
    } catch {
        print("FAIL OptArr3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptArr4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptArr4Codec.decode(r)
        var w = MsgPackWriter()
        OptArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptArr4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr4.json"))
        var r = JsonReader(data)
        let obj = try OptArr4Codec.decode(r)
        var w = JsonWriter()
        OptArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr4.json"))
        jsonOk = true
    } catch {
        print("FAIL OptArr4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptArr4Codec.decode(r)
        var w = JsonWriter()
        OptArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptArr4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr4.gron"))
        var r = GronReader(data)
        let obj = try OptArr4Codec.decode(r)
        var w = GronWriter()
        OptArr4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr4.gron"))
        gronOk = true
    } catch {
        print("FAIL OptArr4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptArr5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptArr5Codec.decode(r)
        var w = MsgPackWriter()
        OptArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptArr5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr5.json"))
        var r = JsonReader(data)
        let obj = try OptArr5Codec.decode(r)
        var w = JsonWriter()
        OptArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr5.json"))
        jsonOk = true
    } catch {
        print("FAIL OptArr5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptArr5Codec.decode(r)
        var w = JsonWriter()
        OptArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptArr5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptArr5.gron"))
        var r = GronReader(data)
        let obj = try OptArr5Codec.decode(r)
        var w = GronWriter()
        OptArr5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptArr5.gron"))
        gronOk = true
    } catch {
        print("FAIL OptArr5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOpt1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOpt1Codec.decode(r)
        var w = MsgPackWriter()
        NestOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOpt1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt1.json"))
        var r = JsonReader(data)
        let obj = try NestOpt1Codec.decode(r)
        var w = JsonWriter()
        NestOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt1.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOpt1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOpt1Codec.decode(r)
        var w = JsonWriter()
        NestOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOpt1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt1.gron"))
        var r = GronReader(data)
        let obj = try NestOpt1Codec.decode(r)
        var w = GronWriter()
        NestOpt1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt1.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOpt1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOpt2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOpt2Codec.decode(r)
        var w = MsgPackWriter()
        NestOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOpt2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt2.json"))
        var r = JsonReader(data)
        let obj = try NestOpt2Codec.decode(r)
        var w = JsonWriter()
        NestOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt2.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOpt2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOpt2Codec.decode(r)
        var w = JsonWriter()
        NestOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOpt2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt2.gron"))
        var r = GronReader(data)
        let obj = try NestOpt2Codec.decode(r)
        var w = GronWriter()
        NestOpt2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt2.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOpt2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOpt3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOpt3Codec.decode(r)
        var w = MsgPackWriter()
        NestOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOpt3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt3.json"))
        var r = JsonReader(data)
        let obj = try NestOpt3Codec.decode(r)
        var w = JsonWriter()
        NestOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt3.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOpt3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOpt3Codec.decode(r)
        var w = JsonWriter()
        NestOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOpt3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt3.gron"))
        var r = GronReader(data)
        let obj = try NestOpt3Codec.decode(r)
        var w = GronWriter()
        NestOpt3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt3.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOpt3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOpt4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOpt4Codec.decode(r)
        var w = MsgPackWriter()
        NestOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOpt4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt4.json"))
        var r = JsonReader(data)
        let obj = try NestOpt4Codec.decode(r)
        var w = JsonWriter()
        NestOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt4.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOpt4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOpt4Codec.decode(r)
        var w = JsonWriter()
        NestOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOpt4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt4.gron"))
        var r = GronReader(data)
        let obj = try NestOpt4Codec.decode(r)
        var w = GronWriter()
        NestOpt4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt4.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOpt4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOpt5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOpt5Codec.decode(r)
        var w = MsgPackWriter()
        NestOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOpt5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt5.json"))
        var r = JsonReader(data)
        let obj = try NestOpt5Codec.decode(r)
        var w = JsonWriter()
        NestOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt5.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOpt5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOpt5Codec.decode(r)
        var w = JsonWriter()
        NestOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOpt5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOpt5.gron"))
        var r = GronReader(data)
        let obj = try NestOpt5Codec.decode(r)
        var w = GronWriter()
        NestOpt5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOpt5.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOpt5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOptInner1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOptInner1Codec.decode(r)
        var w = MsgPackWriter()
        NestOptInner1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOptInner1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner1.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner1Codec.decode(r)
        var w = JsonWriter()
        NestOptInner1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner1.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOptInner1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner1Codec.decode(r)
        var w = JsonWriter()
        NestOptInner1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOptInner1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner1.gron"))
        var r = GronReader(data)
        let obj = try NestOptInner1Codec.decode(r)
        var w = GronWriter()
        NestOptInner1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner1.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOptInner1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOptInner2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOptInner2Codec.decode(r)
        var w = MsgPackWriter()
        NestOptInner2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOptInner2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner2.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner2Codec.decode(r)
        var w = JsonWriter()
        NestOptInner2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner2.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOptInner2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner2Codec.decode(r)
        var w = JsonWriter()
        NestOptInner2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOptInner2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner2.gron"))
        var r = GronReader(data)
        let obj = try NestOptInner2Codec.decode(r)
        var w = GronWriter()
        NestOptInner2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner2.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOptInner2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestOptInner3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestOptInner3Codec.decode(r)
        var w = MsgPackWriter()
        NestOptInner3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestOptInner3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner3.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner3Codec.decode(r)
        var w = JsonWriter()
        NestOptInner3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner3.json"))
        jsonOk = true
    } catch {
        print("FAIL NestOptInner3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestOptInner3Codec.decode(r)
        var w = JsonWriter()
        NestOptInner3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestOptInner3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestOptInner3.gron"))
        var r = GronReader(data)
        let obj = try NestOptInner3Codec.decode(r)
        var w = GronWriter()
        NestOptInner3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestOptInner3.gron"))
        gronOk = true
    } catch {
        print("FAIL NestOptInner3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest1() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest1.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest1Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest1.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest1 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest1.json"))
        var r = JsonReader(data)
        let obj = try DeepNest1Codec.decode(r)
        var w = JsonWriter()
        DeepNest1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest1.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest1 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest1.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest1Codec.decode(r)
        var w = JsonWriter()
        DeepNest1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest1.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest1 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest1.gron"))
        var r = GronReader(data)
        let obj = try DeepNest1Codec.decode(r)
        var w = GronWriter()
        DeepNest1Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest1.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest1 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest2() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest2.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest2Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest2.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest2 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest2.json"))
        var r = JsonReader(data)
        let obj = try DeepNest2Codec.decode(r)
        var w = JsonWriter()
        DeepNest2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest2.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest2 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest2.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest2Codec.decode(r)
        var w = JsonWriter()
        DeepNest2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest2.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest2 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest2.gron"))
        var r = GronReader(data)
        let obj = try DeepNest2Codec.decode(r)
        var w = GronWriter()
        DeepNest2Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest2.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest2 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest3() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest3.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest3Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest3.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest3 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest3.json"))
        var r = JsonReader(data)
        let obj = try DeepNest3Codec.decode(r)
        var w = JsonWriter()
        DeepNest3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest3.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest3 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest3.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest3Codec.decode(r)
        var w = JsonWriter()
        DeepNest3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest3.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest3 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest3.gron"))
        var r = GronReader(data)
        let obj = try DeepNest3Codec.decode(r)
        var w = GronWriter()
        DeepNest3Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest3.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest3 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest4() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest4.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest4Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest4.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest4 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest4.json"))
        var r = JsonReader(data)
        let obj = try DeepNest4Codec.decode(r)
        var w = JsonWriter()
        DeepNest4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest4.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest4 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest4.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest4Codec.decode(r)
        var w = JsonWriter()
        DeepNest4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest4.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest4 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest4.gron"))
        var r = GronReader(data)
        let obj = try DeepNest4Codec.decode(r)
        var w = GronWriter()
        DeepNest4Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest4.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest4 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest5() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest5.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest5Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest5.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest5 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest5.json"))
        var r = JsonReader(data)
        let obj = try DeepNest5Codec.decode(r)
        var w = JsonWriter()
        DeepNest5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest5.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest5 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest5.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest5Codec.decode(r)
        var w = JsonWriter()
        DeepNest5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest5.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest5 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest5.gron"))
        var r = GronReader(data)
        let obj = try DeepNest5Codec.decode(r)
        var w = GronWriter()
        DeepNest5Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest5.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest5 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest6() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest6.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest6Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest6.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest6 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest6.json"))
        var r = JsonReader(data)
        let obj = try DeepNest6Codec.decode(r)
        var w = JsonWriter()
        DeepNest6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest6.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest6 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest6.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest6Codec.decode(r)
        var w = JsonWriter()
        DeepNest6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest6.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest6 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest6.gron"))
        var r = GronReader(data)
        let obj = try DeepNest6Codec.decode(r)
        var w = GronWriter()
        DeepNest6Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest6.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest6 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepNest7() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest7.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepNest7Codec.decode(r)
        var w = MsgPackWriter()
        DeepNest7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest7.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepNest7 msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest7.json"))
        var r = JsonReader(data)
        let obj = try DeepNest7Codec.decode(r)
        var w = JsonWriter()
        DeepNest7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest7.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepNest7 json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest7.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepNest7Codec.decode(r)
        var w = JsonWriter()
        DeepNest7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest7.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepNest7 unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepNest7.gron"))
        var r = GronReader(data)
        let obj = try DeepNest7Codec.decode(r)
        var w = GronWriter()
        DeepNest7Codec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepNest7.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepNest7 gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_TimestampEntry() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/TimestampEntry.msgpack"))
        var r = MsgPackReader(data)
        let obj = try TimestampEntryCodec.decode(r)
        var w = MsgPackWriter()
        TimestampEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/TimestampEntry.msgpack"))
        mpOk = true
    } catch {
        print("FAIL TimestampEntry msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/TimestampEntry.json"))
        var r = JsonReader(data)
        let obj = try TimestampEntryCodec.decode(r)
        var w = JsonWriter()
        TimestampEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/TimestampEntry.json"))
        jsonOk = true
    } catch {
        print("FAIL TimestampEntry json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/TimestampEntry.unformatted.json"))
        var r = JsonReader(data)
        let obj = try TimestampEntryCodec.decode(r)
        var w = JsonWriter()
        TimestampEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/TimestampEntry.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL TimestampEntry unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/TimestampEntry.gron"))
        var r = GronReader(data)
        let obj = try TimestampEntryCodec.decode(r)
        var w = GronWriter()
        TimestampEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/TimestampEntry.gron"))
        gronOk = true
    } catch {
        print("FAIL TimestampEntry gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ConfigEntry() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ConfigEntry.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ConfigEntryCodec.decode(r)
        var w = MsgPackWriter()
        ConfigEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ConfigEntry.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ConfigEntry msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ConfigEntry.json"))
        var r = JsonReader(data)
        let obj = try ConfigEntryCodec.decode(r)
        var w = JsonWriter()
        ConfigEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ConfigEntry.json"))
        jsonOk = true
    } catch {
        print("FAIL ConfigEntry json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ConfigEntry.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ConfigEntryCodec.decode(r)
        var w = JsonWriter()
        ConfigEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ConfigEntry.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ConfigEntry unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ConfigEntry.gron"))
        var r = GronReader(data)
        let obj = try ConfigEntryCodec.decode(r)
        var w = GronWriter()
        ConfigEntryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ConfigEntry.gron"))
        gronOk = true
    } catch {
        print("FAIL ConfigEntry gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestedSimple() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedSimple.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestedSimpleCodec.decode(r)
        var w = MsgPackWriter()
        NestedSimpleCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedSimple.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestedSimple msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedSimple.json"))
        var r = JsonReader(data)
        let obj = try NestedSimpleCodec.decode(r)
        var w = JsonWriter()
        NestedSimpleCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedSimple.json"))
        jsonOk = true
    } catch {
        print("FAIL NestedSimple json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedSimple.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestedSimpleCodec.decode(r)
        var w = JsonWriter()
        NestedSimpleCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedSimple.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestedSimple unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedSimple.gron"))
        var r = GronReader(data)
        let obj = try NestedSimpleCodec.decode(r)
        var w = GronWriter()
        NestedSimpleCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedSimple.gron"))
        gronOk = true
    } catch {
        print("FAIL NestedSimple gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_DeepModel() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = MsgPackWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepModel msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.json"))
        var r = JsonReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = JsonWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepModel json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = JsonWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepModel unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.gron"))
        var r = GronReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = GronWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepModel gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypes(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_OptInner()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

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

    do {
        let r = testModel_OptSingleString()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleBoolean()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleInt8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleInt16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleInt32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleInt64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleUint8()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleUint16()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleUint32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleUint64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleFloat32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleFloat64()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptSingleBytes()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

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

    do {
        let r = testModel_Five01()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five02()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five03()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five04()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five05()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five06()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five07()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five08()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five09()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Five10()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ten01()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ten02()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ten03()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ten04()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ten05()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

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

    do {
        let r = testModel_NestInner()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestCoord()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestIdVal()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestLabel()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestMoney()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestRange32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestAddr()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestPoint3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestInner()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestCoord()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestIdVal()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestLabel()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestMoney()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestRange32()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestAddr()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptNestPoint3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ModelArr1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ModelArr2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ModelArr3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ModelArr4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ModelArr5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix01()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix02()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix03()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix04()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix05()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix06()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix07()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix08()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix09()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix10()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix11()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix12()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix13()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix14()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Mix15()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_AllOpt1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_AllOpt2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_AllOpt3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_AllOpt4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_AllOpt5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_RecList()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_RecTree()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_RecChain()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_RecWrap()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_RecWide()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Wide20()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Wide25()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Wide30()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Wide35()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Wide40()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeEmpty()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeOneOpt()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBigNums()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeZeroVals()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNullable()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNegZero()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNullByte()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBoundary()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeStrLen()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBytesLen()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeArrEmpty()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeArrBoundary()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptArr1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptArr2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptArr3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptArr4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptArr5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOpt1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOpt2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOpt3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOpt4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOpt5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOptInner1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOptInner2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestOptInner3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest1()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest2()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest3()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest4()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest5()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest6()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepNest7()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_TimestampEntry()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ConfigEntry()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestedSimple()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_DeepModel()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
