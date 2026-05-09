import Foundation
import Specodec

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


func runAllTypesNested(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_NestedSimple()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
