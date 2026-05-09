import Foundation
import Specodec

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


func runAllTypesMany(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
