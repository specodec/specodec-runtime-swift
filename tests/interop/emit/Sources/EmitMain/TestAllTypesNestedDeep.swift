import Foundation
import Specodec

func testModel_DeepModel() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.msgpack"))
        var r = MsgPackReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = MsgPackWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.msgpack"))
        mpOk = true
    } catch {
        print("FAIL DeepModel msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.json"))
        var r = JsonReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = JsonWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.json"))
        jsonOk = true
    } catch {
        print("FAIL DeepModel json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.unformatted.json"))
        var r = JsonReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = JsonWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL DeepModel unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/DeepModel.gron"))
        var r = GronReader(data)
        let obj = try DeepModelCodec.decode(r)
        var w = GronWriter()
        DeepModelCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/DeepModel.gron"))
        gronOk = true
    } catch {
        print("FAIL DeepModel gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesNestedDeep(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_DeepModel()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
