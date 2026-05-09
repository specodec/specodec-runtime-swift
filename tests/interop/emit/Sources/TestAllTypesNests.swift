import Foundation
import Specodec

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


func runAllTypesNests(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
