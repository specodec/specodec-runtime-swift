import Foundation
import Specodec

func testModel_OptInner() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = MsgPackWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptInner msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.json"))
        var r = JsonReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = JsonWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.json"))
        jsonOk = true
    } catch {
        print("FAIL OptInner json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = JsonWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptInner unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptInner.gron"))
        var r = GronReader(data)
        let obj = try OptInnerCodec.decode(r)
        var w = GronWriter()
        OptInnerCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptInner.gron"))
        gronOk = true
    } catch {
        print("FAIL OptInner gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Shape_circle() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_circle.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = MsgPackWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_circle.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Shape_circle msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_circle.json"))
        var r = JsonReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = JsonWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_circle.json"))
        jsonOk = true
    } catch {
        print("FAIL Shape_circle json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_circle.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = JsonWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_circle.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Shape_circle unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_circle.gron"))
        var r = GronReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = GronWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_circle.gron"))
        gronOk = true
    } catch {
        print("FAIL Shape_circle gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Shape_rect() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_rect.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = MsgPackWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_rect.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Shape_rect msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_rect.json"))
        var r = JsonReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = JsonWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_rect.json"))
        jsonOk = true
    } catch {
        print("FAIL Shape_rect json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_rect.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = JsonWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_rect.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Shape_rect unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Shape_rect.gron"))
        var r = GronReader(data)
        let obj = try ShapeCodec.decode(r)
        var w = GronWriter()
        ShapeCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Shape_rect.gron"))
        gronOk = true
    } catch {
        print("FAIL Shape_rect gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ident_name() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_name.msgpack"))
        var r = MsgPackReader(data)
        let obj = try IdentCodec.decode(r)
        var w = MsgPackWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_name.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ident_name msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_name.json"))
        var r = JsonReader(data)
        let obj = try IdentCodec.decode(r)
        var w = JsonWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_name.json"))
        jsonOk = true
    } catch {
        print("FAIL Ident_name json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_name.unformatted.json"))
        var r = JsonReader(data)
        let obj = try IdentCodec.decode(r)
        var w = JsonWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_name.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ident_name unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_name.gron"))
        var r = GronReader(data)
        let obj = try IdentCodec.decode(r)
        var w = GronWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_name.gron"))
        gronOk = true
    } catch {
        print("FAIL Ident_name gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Ident_number() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_number.msgpack"))
        var r = MsgPackReader(data)
        let obj = try IdentCodec.decode(r)
        var w = MsgPackWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_number.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Ident_number msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_number.json"))
        var r = JsonReader(data)
        let obj = try IdentCodec.decode(r)
        var w = JsonWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_number.json"))
        jsonOk = true
    } catch {
        print("FAIL Ident_number json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_number.unformatted.json"))
        var r = JsonReader(data)
        let obj = try IdentCodec.decode(r)
        var w = JsonWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_number.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Ident_number unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Ident_number.gron"))
        var r = GronReader(data)
        let obj = try IdentCodec.decode(r)
        var w = GronWriter()
        IdentCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Ident_number.gron"))
        gronOk = true
    } catch {
        print("FAIL Ident_number gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ResultMsg_ok() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_ok.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = MsgPackWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_ok.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ResultMsg_ok msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_ok.json"))
        var r = JsonReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = JsonWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_ok.json"))
        jsonOk = true
    } catch {
        print("FAIL ResultMsg_ok json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_ok.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = JsonWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_ok.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ResultMsg_ok unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_ok.gron"))
        var r = GronReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = GronWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_ok.gron"))
        gronOk = true
    } catch {
        print("FAIL ResultMsg_ok gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ResultMsg_err() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_err.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = MsgPackWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_err.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ResultMsg_err msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_err.json"))
        var r = JsonReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = JsonWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_err.json"))
        jsonOk = true
    } catch {
        print("FAIL ResultMsg_err json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_err.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = JsonWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_err.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ResultMsg_err unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ResultMsg_err.gron"))
        var r = GronReader(data)
        let obj = try ResultMsgCodec.decode(r)
        var w = GronWriter()
        ResultMsgCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ResultMsg_err.gron"))
        gronOk = true
    } catch {
        print("FAIL ResultMsg_err gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Tagged_tag() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_tag.msgpack"))
        var r = MsgPackReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = MsgPackWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_tag.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Tagged_tag msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_tag.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_tag.json"))
        jsonOk = true
    } catch {
        print("FAIL Tagged_tag json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_tag.unformatted.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_tag.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Tagged_tag unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_tag.gron"))
        var r = GronReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = GronWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_tag.gron"))
        gronOk = true
    } catch {
        print("FAIL Tagged_tag gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Tagged_score() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_score.msgpack"))
        var r = MsgPackReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = MsgPackWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_score.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Tagged_score msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_score.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_score.json"))
        jsonOk = true
    } catch {
        print("FAIL Tagged_score json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_score.unformatted.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_score.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Tagged_score unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_score.gron"))
        var r = GronReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = GronWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_score.gron"))
        gronOk = true
    } catch {
        print("FAIL Tagged_score gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_Tagged_active() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_active.msgpack"))
        var r = MsgPackReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = MsgPackWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_active.msgpack"))
        mpOk = true
    } catch {
        print("FAIL Tagged_active msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_active.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_active.json"))
        jsonOk = true
    } catch {
        print("FAIL Tagged_active json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_active.unformatted.json"))
        var r = JsonReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = JsonWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_active.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL Tagged_active unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/Tagged_active.gron"))
        var r = GronReader(data)
        let obj = try TaggedCodec.decode(r)
        var w = GronWriter()
        TaggedCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/Tagged_active.gron"))
        gronOk = true
    } catch {
        print("FAIL Tagged_active gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptUnionHolder_shape() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_shape.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = MsgPackWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_shape.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptUnionHolder_shape msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_shape.json"))
        var r = JsonReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_shape.json"))
        jsonOk = true
    } catch {
        print("FAIL OptUnionHolder_shape json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_shape.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_shape.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptUnionHolder_shape unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_shape.gron"))
        var r = GronReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = GronWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_shape.gron"))
        gronOk = true
    } catch {
        print("FAIL OptUnionHolder_shape gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_OptUnionHolder_id() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_id.msgpack"))
        var r = MsgPackReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = MsgPackWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_id.msgpack"))
        mpOk = true
    } catch {
        print("FAIL OptUnionHolder_id msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_id.json"))
        var r = JsonReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_id.json"))
        jsonOk = true
    } catch {
        print("FAIL OptUnionHolder_id json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_id.unformatted.json"))
        var r = JsonReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = JsonWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_id.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL OptUnionHolder_id unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/OptUnionHolder_id.gron"))
        var r = GronReader(data)
        let obj = try OptUnionHolderCodec.decode(r)
        var w = GronWriter()
        OptUnionHolderCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/OptUnionHolder_id.gron"))
        gronOk = true
    } catch {
        print("FAIL OptUnionHolder_id gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MixedUnion_point() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_point.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = MsgPackWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_point.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MixedUnion_point msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_point.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_point.json"))
        jsonOk = true
    } catch {
        print("FAIL MixedUnion_point json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_point.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_point.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MixedUnion_point unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_point.gron"))
        var r = GronReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = GronWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_point.gron"))
        gronOk = true
    } catch {
        print("FAIL MixedUnion_point gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MixedUnion_label() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_label.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = MsgPackWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_label.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MixedUnion_label msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_label.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_label.json"))
        jsonOk = true
    } catch {
        print("FAIL MixedUnion_label json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_label.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_label.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MixedUnion_label unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_label.gron"))
        var r = GronReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = GronWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_label.gron"))
        gronOk = true
    } catch {
        print("FAIL MixedUnion_label gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_MixedUnion_count() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_count.msgpack"))
        var r = MsgPackReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = MsgPackWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_count.msgpack"))
        mpOk = true
    } catch {
        print("FAIL MixedUnion_count msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_count.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_count.json"))
        jsonOk = true
    } catch {
        print("FAIL MixedUnion_count json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_count.unformatted.json"))
        var r = JsonReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = JsonWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_count.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL MixedUnion_count unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/MixedUnion_count.gron"))
        var r = GronReader(data)
        let obj = try MixedUnionCodec.decode(r)
        var w = GronWriter()
        MixedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/MixedUnion_count.gron"))
        gronOk = true
    } catch {
        print("FAIL MixedUnion_count gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestedUnion_result() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_result.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = MsgPackWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_result.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestedUnion_result msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_result.json"))
        var r = JsonReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = JsonWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_result.json"))
        jsonOk = true
    } catch {
        print("FAIL NestedUnion_result json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_result.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = JsonWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_result.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestedUnion_result unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_result.gron"))
        var r = GronReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = GronWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_result.gron"))
        gronOk = true
    } catch {
        print("FAIL NestedUnion_result gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_NestedUnion_shape() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_shape.msgpack"))
        var r = MsgPackReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = MsgPackWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_shape.msgpack"))
        mpOk = true
    } catch {
        print("FAIL NestedUnion_shape msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_shape.json"))
        var r = JsonReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = JsonWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_shape.json"))
        jsonOk = true
    } catch {
        print("FAIL NestedUnion_shape json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_shape.unformatted.json"))
        var r = JsonReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = JsonWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_shape.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL NestedUnion_shape unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/NestedUnion_shape.gron"))
        var r = GronReader(data)
        let obj = try NestedUnionCodec.decode(r)
        var w = GronWriter()
        NestedUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/NestedUnion_shape.gron"))
        gronOk = true
    } catch {
        print("FAIL NestedUnion_shape gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ScalarUnion_s() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_s.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = MsgPackWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_s.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ScalarUnion_s msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_s.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_s.json"))
        jsonOk = true
    } catch {
        print("FAIL ScalarUnion_s json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_s.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_s.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ScalarUnion_s unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_s.gron"))
        var r = GronReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = GronWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_s.gron"))
        gronOk = true
    } catch {
        print("FAIL ScalarUnion_s gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ScalarUnion_i() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_i.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = MsgPackWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_i.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ScalarUnion_i msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_i.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_i.json"))
        jsonOk = true
    } catch {
        print("FAIL ScalarUnion_i json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_i.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_i.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ScalarUnion_i unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_i.gron"))
        var r = GronReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = GronWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_i.gron"))
        gronOk = true
    } catch {
        print("FAIL ScalarUnion_i gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ScalarUnion_f() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_f.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = MsgPackWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_f.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ScalarUnion_f msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_f.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_f.json"))
        jsonOk = true
    } catch {
        print("FAIL ScalarUnion_f json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_f.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_f.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ScalarUnion_f unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_f.gron"))
        var r = GronReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = GronWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_f.gron"))
        gronOk = true
    } catch {
        print("FAIL ScalarUnion_f gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}

func testModel_ScalarUnion_b() -> (Bool, Bool, Bool, Bool) {
    var mpOk = false, jsonOk = false, jsonPrettyOk = false, gronOk = false

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_b.msgpack"))
        var r = MsgPackReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = MsgPackWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_b.msgpack"))
        mpOk = true
    } catch {
        print("FAIL ScalarUnion_b msgpack: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_b.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_b.json"))
        jsonOk = true
    } catch {
        print("FAIL ScalarUnion_b json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_b.unformatted.json"))
        var r = JsonReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = JsonWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_b.unformatted.json"))
        jsonPrettyOk = true
    } catch {
        print("FAIL ScalarUnion_b unformatted json: \(error)")
    }

    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: vecDir + "/ScalarUnion_b.gron"))
        var r = GronReader(data)
        let obj = try ScalarUnionCodec.decode(r)
        var w = GronWriter()
        ScalarUnionCodec.encode(w, obj)
        let out = w.toBytes()
        try out.write(to: URL(fileURLWithPath: outDir + "/ScalarUnion_b.gron"))
        gronOk = true
    } catch {
        print("FAIL ScalarUnion_b gron: \(error)")
    }

    return (mpOk, jsonOk, jsonPrettyOk, gronOk)
}


func runAllTypes(_ vecDir: String, _ outDir: String) -> (Int, Int) {
    var passed = 0
    var failed = 0
    do {
        let r = testModel_OptInner()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Shape_circle()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Shape_rect()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ident_name()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Ident_number()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ResultMsg_ok()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ResultMsg_err()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Tagged_tag()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Tagged_score()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_Tagged_active()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptUnionHolder_shape()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_OptUnionHolder_id()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MixedUnion_point()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MixedUnion_label()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_MixedUnion_count()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestedUnion_result()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_NestedUnion_shape()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ScalarUnion_s()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ScalarUnion_i()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ScalarUnion_f()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    do {
        let r = testModel_ScalarUnion_b()
        if r.0 { passed += 1 } else { failed += 1 }
        if r.1 { passed += 1 } else { failed += 1 }
        if r.2 { passed += 1 } else { failed += 1 }
        if r.3 { passed += 1 } else { failed += 1 }
    }

    return (passed, failed)
}
