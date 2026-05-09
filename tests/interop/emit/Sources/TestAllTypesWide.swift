import Foundation
import Specodec

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


func runAllTypesWide(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
