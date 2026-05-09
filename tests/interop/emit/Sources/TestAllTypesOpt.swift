import Foundation
import Specodec

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


func runAllTypesOpt(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
