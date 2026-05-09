import Foundation
import Specodec

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


func runAllTypesMixed(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
