import Foundation
import Specodec

func testModel_UnionFieldHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionFieldHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try UnionFieldHolderCodec.decode(r)
        var w = MsgPackWriter()
        UnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionFieldHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL UnionFieldHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionFieldHolder.json"))
        var r = JsonReader(data)
        let obj = try UnionFieldHolderCodec.decode(r)
        var w = JsonWriter()
        UnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionFieldHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL UnionFieldHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionFieldHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try UnionFieldHolderCodec.decode(r)
        var w = JsonWriter()
        UnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionFieldHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL UnionFieldHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionFieldHolder.gron"))
        var r = GronReader(data)
        let obj = try UnionFieldHolderCodec.decode(r)
        var w = GronWriter()
        UnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionFieldHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL UnionFieldHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptUnionFieldHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionFieldHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptUnionFieldHolderCodec.decode(r)
        var w = MsgPackWriter()
        OptUnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionFieldHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptUnionFieldHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionFieldHolder.json"))
        var r = JsonReader(data)
        let obj = try OptUnionFieldHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionFieldHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL OptUnionFieldHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionFieldHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptUnionFieldHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionFieldHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptUnionFieldHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionFieldHolder.gron"))
        var r = GronReader(data)
        let obj = try OptUnionFieldHolderCodec.decode(r)
        var w = GronWriter()
        OptUnionFieldHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionFieldHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL OptUnionFieldHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_UnionArrayHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionArrayHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try UnionArrayHolderCodec.decode(r)
        var w = MsgPackWriter()
        UnionArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionArrayHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL UnionArrayHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionArrayHolder.json"))
        var r = JsonReader(data)
        let obj = try UnionArrayHolderCodec.decode(r)
        var w = JsonWriter()
        UnionArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionArrayHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL UnionArrayHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionArrayHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try UnionArrayHolderCodec.decode(r)
        var w = JsonWriter()
        UnionArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionArrayHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL UnionArrayHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionArrayHolder.gron"))
        var r = GronReader(data)
        let obj = try UnionArrayHolderCodec.decode(r)
        var w = GronWriter()
        UnionArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionArrayHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL UnionArrayHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_UnionMixedHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionMixedHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try UnionMixedHolderCodec.decode(r)
        var w = MsgPackWriter()
        UnionMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionMixedHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL UnionMixedHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionMixedHolder.json"))
        var r = JsonReader(data)
        let obj = try UnionMixedHolderCodec.decode(r)
        var w = JsonWriter()
        UnionMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionMixedHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL UnionMixedHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionMixedHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try UnionMixedHolderCodec.decode(r)
        var w = JsonWriter()
        UnionMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionMixedHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL UnionMixedHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionMixedHolder.gron"))
        var r = GronReader(data)
        let obj = try UnionMixedHolderCodec.decode(r)
        var w = GronWriter()
        UnionMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionMixedHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL UnionMixedHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_UnionScalarHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionScalarHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try UnionScalarHolderCodec.decode(r)
        var w = MsgPackWriter()
        UnionScalarHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionScalarHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL UnionScalarHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionScalarHolder.json"))
        var r = JsonReader(data)
        let obj = try UnionScalarHolderCodec.decode(r)
        var w = JsonWriter()
        UnionScalarHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionScalarHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL UnionScalarHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionScalarHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try UnionScalarHolderCodec.decode(r)
        var w = JsonWriter()
        UnionScalarHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionScalarHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL UnionScalarHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/UnionScalarHolder.gron"))
        var r = GronReader(data)
        let obj = try UnionScalarHolderCodec.decode(r)
        var w = GronWriter()
        UnionScalarHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/UnionScalarHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL UnionScalarHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesUnions(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_UnionFieldHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptUnionFieldHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_UnionArrayHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_UnionMixedHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_UnionScalarHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
