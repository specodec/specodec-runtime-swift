import Foundation
import Specodec

func testModel_EdgeEmpty() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = MsgPackWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeEmpty msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.json"))
        var r = JsonReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeEmpty json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeEmpty unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeEmpty.gron"))
        var r = GronReader(data)
        let obj = try EdgeEmptyCodec.decode(r)
        var w = GronWriter()
        EdgeEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeEmpty.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeEmpty gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeOneOpt() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = MsgPackWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeOneOpt msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.json"))
        var r = JsonReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = JsonWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeOneOpt json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = JsonWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeOneOpt unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeOneOpt.gron"))
        var r = GronReader(data)
        let obj = try EdgeOneOptCodec.decode(r)
        var w = GronWriter()
        EdgeOneOptCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeOneOpt.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeOneOpt gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBigNums() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBigNums msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.json"))
        var r = JsonReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = JsonWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBigNums json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = JsonWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBigNums unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBigNums.gron"))
        var r = GronReader(data)
        let obj = try EdgeBigNumsCodec.decode(r)
        var w = GronWriter()
        EdgeBigNumsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBigNums.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBigNums gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeZeroVals() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = MsgPackWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeZeroVals msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.json"))
        var r = JsonReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = JsonWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeZeroVals json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = JsonWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeZeroVals unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeZeroVals.gron"))
        var r = GronReader(data)
        let obj = try EdgeZeroValsCodec.decode(r)
        var w = GronWriter()
        EdgeZeroValsCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeZeroVals.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeZeroVals gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNullable() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNullable msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = JsonWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNullable json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = JsonWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNullable unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullable.gron"))
        var r = GronReader(data)
        let obj = try EdgeNullableCodec.decode(r)
        var w = GronWriter()
        EdgeNullableCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullable.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNullable gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNegZero() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNegZero msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.json"))
        var r = JsonReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = JsonWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNegZero json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = JsonWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNegZero unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNegZero.gron"))
        var r = GronReader(data)
        let obj = try EdgeNegZeroCodec.decode(r)
        var w = GronWriter()
        EdgeNegZeroCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNegZero.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNegZero gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeNullByte() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = MsgPackWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeNullByte msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = JsonWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeNullByte json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = JsonWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeNullByte unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeNullByte.gron"))
        var r = GronReader(data)
        let obj = try EdgeNullByteCodec.decode(r)
        var w = GronWriter()
        EdgeNullByteCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeNullByte.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeNullByte gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBoundary() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBoundary msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.json"))
        var r = JsonReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBoundary json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBoundary unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBoundary.gron"))
        var r = GronReader(data)
        let obj = try EdgeBoundaryCodec.decode(r)
        var w = GronWriter()
        EdgeBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBoundary.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBoundary gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeStrLen() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = MsgPackWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeStrLen msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.json"))
        var r = JsonReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = JsonWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeStrLen json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = JsonWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeStrLen unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeStrLen.gron"))
        var r = GronReader(data)
        let obj = try EdgeStrLenCodec.decode(r)
        var w = GronWriter()
        EdgeStrLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeStrLen.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeStrLen gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeBytesLen() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = MsgPackWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeBytesLen msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.json"))
        var r = JsonReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = JsonWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeBytesLen json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = JsonWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeBytesLen unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeBytesLen.gron"))
        var r = GronReader(data)
        let obj = try EdgeBytesLenCodec.decode(r)
        var w = GronWriter()
        EdgeBytesLenCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeBytesLen.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeBytesLen gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeArrEmpty() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = MsgPackWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeArrEmpty msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeArrEmpty json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = JsonWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeArrEmpty unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrEmpty.gron"))
        var r = GronReader(data)
        let obj = try EdgeArrEmptyCodec.decode(r)
        var w = GronWriter()
        EdgeArrEmptyCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrEmpty.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeArrEmpty gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_EdgeArrBoundary() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.msgpack"))
        var r = MsgPackReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = MsgPackWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.msgpack"))
        mpOk = true
    } catch {
        print("FAIL EdgeArrBoundary msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.json"))
        jsonOk = true
    } catch {
        print("FAIL EdgeArrBoundary json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.unformatted.json"))
        var r = JsonReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = JsonWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL EdgeArrBoundary unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/EdgeArrBoundary.gron"))
        var r = GronReader(data)
        let obj = try EdgeArrBoundaryCodec.decode(r)
        var w = GronWriter()
        EdgeArrBoundaryCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/EdgeArrBoundary.gron"))
        gronOk = true
    } catch {
        print("FAIL EdgeArrBoundary gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypesEdge(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_EdgeEmpty()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeOneOpt()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBigNums()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeZeroVals()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNullable()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNegZero()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeNullByte()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBoundary()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeStrLen()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeBytesLen()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeArrEmpty()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_EdgeArrBoundary()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
