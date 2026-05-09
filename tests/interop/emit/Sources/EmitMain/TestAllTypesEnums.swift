import Foundation
import Specodec

func testModel_EnumHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EnumHolderCodec.decode(r)
        var w = MsgPackWriter()
        EnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EnumHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumHolder.json"))
        var r = JsonReader(data)
        let obj = try EnumHolderCodec.decode(r)
        var w = JsonWriter()
        EnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL EnumHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EnumHolderCodec.decode(r)
        var w = JsonWriter()
        EnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EnumHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumHolder.gron"))
        var r = GronReader(data)
        let obj = try EnumHolderCodec.decode(r)
        var w = GronWriter()
        EnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL EnumHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptEnumHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptEnumHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptEnumHolderCodec.decode(r)
        var w = MsgPackWriter()
        OptEnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptEnumHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptEnumHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptEnumHolder.json"))
        var r = JsonReader(data)
        let obj = try OptEnumHolderCodec.decode(r)
        var w = JsonWriter()
        OptEnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptEnumHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL OptEnumHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptEnumHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptEnumHolderCodec.decode(r)
        var w = JsonWriter()
        OptEnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptEnumHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptEnumHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptEnumHolder.gron"))
        var r = GronReader(data)
        let obj = try OptEnumHolderCodec.decode(r)
        var w = GronWriter()
        OptEnumHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptEnumHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL OptEnumHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EnumArrayHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumArrayHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EnumArrayHolderCodec.decode(r)
        var w = MsgPackWriter()
        EnumArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumArrayHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EnumArrayHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumArrayHolder.json"))
        var r = JsonReader(data)
        let obj = try EnumArrayHolderCodec.decode(r)
        var w = JsonWriter()
        EnumArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumArrayHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL EnumArrayHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumArrayHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EnumArrayHolderCodec.decode(r)
        var w = JsonWriter()
        EnumArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumArrayHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EnumArrayHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumArrayHolder.gron"))
        var r = GronReader(data)
        let obj = try EnumArrayHolderCodec.decode(r)
        var w = GronWriter()
        EnumArrayHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumArrayHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL EnumArrayHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EnumMixedHolder() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumMixedHolder.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EnumMixedHolderCodec.decode(r)
        var w = MsgPackWriter()
        EnumMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumMixedHolder.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EnumMixedHolder msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumMixedHolder.json"))
        var r = JsonReader(data)
        let obj = try EnumMixedHolderCodec.decode(r)
        var w = JsonWriter()
        EnumMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumMixedHolder.json"))
        jsonOk = true
    } catch {
        print("FAIL EnumMixedHolder json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumMixedHolder.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EnumMixedHolderCodec.decode(r)
        var w = JsonWriter()
        EnumMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumMixedHolder.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EnumMixedHolder unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EnumMixedHolder.gron"))
        var r = GronReader(data)
        let obj = try EnumMixedHolderCodec.decode(r)
        var w = GronWriter()
        EnumMixedHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EnumMixedHolder.gron"))
        gronOk = true
    } catch {
        print("FAIL EnumMixedHolder gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesEnums(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_EnumHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptEnumHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EnumArrayHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EnumMixedHolder()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
