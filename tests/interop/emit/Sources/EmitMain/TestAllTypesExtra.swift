import Foundation
import Specodec

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


func runAllTypesExtra(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
