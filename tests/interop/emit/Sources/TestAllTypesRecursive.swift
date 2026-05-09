import Foundation
import Specodec

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


func runAllTypesRecursive(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
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

    return (passed, failed)
}
