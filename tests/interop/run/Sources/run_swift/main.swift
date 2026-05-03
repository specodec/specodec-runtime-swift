import Foundation
import Specodec

let vecDir = URL(fileURLWithPath: ProcessInfo.processInfo.environment["VEC_DIR"] ?? "../vectors")
let outDir = URL(fileURLWithPath: ProcessInfo.processInfo.environment["OUT_DIR"] ?? "../output_swift")

// ═══════════════════════════════════
// Schema types
// ═══════════════════════════════════

struct FieldSchema {
    let name: String, type: String
    let optional: Bool, isArray: Bool, isModel: Bool
}

struct ModelSchema {
    let fields: [FieldSchema]
    let recursive: Bool
}

func loadSchema() throws -> [String: ModelSchema] {
    let data = try Data(contentsOf: vecDir.appendingPathComponent("typeschema.json"))
    let raw = try JSONSerialization.jsonObject(with: data) as! [String: [String: Any]]
    var result = [String: ModelSchema]()
    for (name, m) in raw {
        let fieldArr = m["fields"] as! [[String: Any]]
        let fields = fieldArr.map { f -> FieldSchema in
            FieldSchema(
                name: f["name"] as! String,
                type: f["type"] as! String,
                optional: f["optional"] as? Bool ?? false,
                isArray: f["isArray"] as? Bool ?? false,
                isModel: f["isModel"] as? Bool ?? false
            )
        }
        result[name] = ModelSchema(fields: fields, recursive: m["recursive"] as? Bool ?? false)
    }
    return result
}

nonisolated(unsafe) var schema: [String: ModelSchema] = [:]

// ═══════════════════════════════════
// Generic decode/encode
// ═══════════════════════════════════

func readScalar(_ r: SpecReader, _ typ: String) throws -> Any {
    switch typ {
    case "string":  return try r.readString()
    case "boolean": return try r.readBool()
    case "int8", "int16", "int32": return try r.readInt32()
    case "int64":   return try r.readInt64()
    case "uint8", "uint16", "uint32": return try r.readUint32()
    case "uint64":  return try r.readUint64()
    case "float32": return try r.readFloat32()
    case "float64": return try r.readFloat64()
    case "bytes":   return try r.readBytes()
    default: throw SCodecError(code: "ERR", message: "unknown scalar: \(typ)")
    }
}

func writeScalarMP(_ w: MsgPackWriter, _ v: Any, _ typ: String) {
    switch typ {
    case "string":  w.writeString(v as! String)
    case "boolean": w.writeBool(v as! Bool)
    case "int8", "int16", "int32": w.writeInt32(v as! Int32)
    case "int64":   w.writeInt64(v as! Int64)
    case "uint8", "uint16", "uint32": w.writeUint32(v as! UInt32)
    case "uint64":  w.writeUint64(v as! UInt64)
    case "float32": w.writeFloat32(v as! Float)
    case "float64": w.writeFloat64(v as! Double)
    case "bytes":   w.writeBytes(v as! Data)
    default: break
    }
}

func writeScalarJSON(_ w: JsonWriter, _ v: Any, _ typ: String) {
    switch typ {
    case "string":  w.writeString(v as! String)
    case "boolean": w.writeBool(v as! Bool)
    case "int8", "int16", "int32": w.writeInt32(v as! Int32)
    case "int64":   w.writeInt64(v as! Int64)
    case "uint8", "uint16", "uint32": w.writeUint32(v as! UInt32)
    case "uint64":  w.writeUint64(v as! UInt64)
    case "float32": w.writeFloat32(v as! Float)
    case "float64": w.writeFloat64(v as! Double)
    case "bytes":   w.writeBytes(v as! Data)
    default: break
    }
}

func writeScalarGRON(_ w: GronWriter, _ v: Any, _ typ: String) throws {
    switch typ {
    case "string":  try w.writeString(v as! String)
    case "boolean": try w.writeBool(v as! Bool)
    case "int8", "int16", "int32": try w.writeInt32(v as! Int32)
    case "int64":   try w.writeInt64(v as! Int64)
    case "uint8", "uint16", "uint32": try w.writeUint32(v as! UInt32)
    case "uint64":  try w.writeUint64(v as! UInt64)
    case "float32": try w.writeFloat32(v as! Float)
    case "float64": try w.writeFloat64(v as! Double)
    case "bytes":   try w.writeBytes(v as! Data)
    default: break
    }
}

func decodeField(_ r: SpecReader, _ field: FieldSchema) throws -> Any? {
    if field.isArray {
        var arr = [Any?]()
        try r.beginArray()
        while try r.hasNextElement() {
            if field.isModel { arr.append(try decodeModelObj(r, field.type)) }
            else { arr.append(try readScalar(r, field.type)) }
        }
        try r.endArray()
        return arr
    }
    if field.isModel { return try decodeModelObj(r, field.type) }
    return try readScalar(r, field.type)
}

func decodeModelObj(_ r: SpecReader, _ modelName: String) throws -> [String: Any?] {
    let ms = schema[modelName]!
    var o = [String: Any?]()
    try r.beginObject()
    while try r.hasNextField() {
        let k = try r.readFieldName()
        if let field = ms.fields.first(where: { $0.name == k }) {
            o[k] = try decodeField(r, field)
        } else {
            try r.skip()
        }
    }
    try r.endObject()
    return o
}

func readScalarGron(_ r: GronReader, _ typ: String) throws -> Any {
    switch typ {
    case "string":  return try r.readString()
    case "boolean": return try r.readBool()
    case "int8", "int16", "int32": return try r.readInt32()
    case "int64":   return try r.readInt64()
    case "uint8", "uint16", "uint32": return try r.readUint32()
    case "uint64":  return try r.readUint64()
    case "float32": return try r.readFloat32()
    case "float64": return try r.readFloat64()
    case "bytes":   return try r.readBytes()
    default: throw SCodecError(code: "ERR", message: "unknown scalar: \(typ)")
    }
}

func decodeFieldGron(_ r: GronReader, _ field: FieldSchema) throws -> Any? {
    if field.isArray {
        var arr = [Any?]()
        try r.beginArray()
        while try r.hasNextElement() {
            try r.nextElement()
            if field.isModel { arr.append(try decodeModelGron(r, field.type)) }
            else { arr.append(try readScalarGron(r, field.type)) }
        }
        try r.endArray()
        return arr
    }
    if field.isModel { return try decodeModelGron(r, field.type) }
    return try readScalarGron(r, field.type)
}

func decodeModelGron(_ r: GronReader, _ modelName: String) throws -> [String: Any?] {
    let ms = schema[modelName]!
    var o = [String: Any?]()
    try r.beginObject()
    while try r.hasNextField() {
        let k = try r.readFieldName()
        if let field = ms.fields.first(where: { $0.name == k }) {
            o[k] = try decodeFieldGron(r, field)
        } else {
            try r.skip()
        }
    }
    try r.endObject()
    return o
}

func encodeFieldMP(_ w: MsgPackWriter, _ v: Any?, _ field: FieldSchema) {
    if field.isArray {
        let arr = v as! [Any?]
        w.beginArray(arr.count)
        for item in arr {
            if field.isModel { encodeModelInlineMP(w, item as! [String: Any?], field.type) }
            else { writeScalarMP(w, item!, field.type) }
        }
        w.endArray()
        return
    }
    if field.isModel {
        encodeModelInlineMP(w, v as! [String: Any?], field.type)
        return
    }
    writeScalarMP(w, v!, field.type)
}

func encodeModelMP(_ o: [String: Any?], _ modelName: String) -> Data {
    let w = MsgPackWriter()
    encodeModelInlineMP(w, o, modelName)
    return w.toBytes()
}

func encodeModelInlineMP(_ w: MsgPackWriter, _ o: [String: Any?], _ modelName: String) {
    let ms = schema[modelName]!
    var count = 0
    for f in ms.fields {
        if f.optional && o[f.name] == nil { continue }
        count += 1
    }
    w.beginObject(count)
    for f in ms.fields {
        if f.optional && o[f.name] == nil { continue }
        w.writeField(f.name)
        encodeFieldMP(w, o[f.name]!, f)
    }
    w.endObject()
}

func encodeFieldJSON(_ w: JsonWriter, _ v: Any?, _ field: FieldSchema) {
    if field.isArray {
        let arr = v as! [Any?]
        w.beginArray()
        for item in arr {
            w.nextElement()
            if field.isModel { encodeModelInlineJSON(w, item as! [String: Any?], field.type) }
            else { writeScalarJSON(w, item!, field.type) }
        }
        w.endArray()
        return
    }
    if field.isModel {
        encodeModelInlineJSON(w, v as! [String: Any?], field.type)
        return
    }
    writeScalarJSON(w, v!, field.type)
}

func encodeModelJSON(_ o: [String: Any?], _ modelName: String) -> Data {
    let w = JsonWriter()
    encodeModelInlineJSON(w, o, modelName)
    return w.toBytes()
}

func encodeModelInlineJSON(_ w: JsonWriter, _ o: [String: Any?], _ modelName: String) {
    let ms = schema[modelName]!
    w.beginObject()
    for f in ms.fields {
        if f.optional && o[f.name] == nil { continue }
        w.writeField(f.name)
        encodeFieldJSON(w, o[f.name]!, f)
    }
    w.endObject()
}

func encodeFieldGRON(_ w: GronWriter, _ v: Any?, _ field: FieldSchema) throws {
    if field.isArray {
        let arr = v as! [Any?]
        try w.beginArray(arr.count)
        for item in arr {
            try w.nextElement()
            if field.isModel { try encodeModelInlineGRON(w, item as! [String: Any?], field.type) }
            else { try writeScalarGRON(w, item!, field.type) }
        }
        try w.endArray()
        return
    }
    if field.isModel {
        try encodeModelInlineGRON(w, v as! [String: Any?], field.type)
        return
    }
    try writeScalarGRON(w, v!, field.type)
}

func encodeModelGRON(_ o: [String: Any?], _ modelName: String) throws -> Data {
    let w = GronWriter()
    try encodeModelInlineGRON(w, o, modelName)
    return try w.toBytes()
}

func encodeModelInlineGRON(_ w: GronWriter, _ o: [String: Any?], _ modelName: String) throws {
    let ms = schema[modelName]!
    var count = 0
    for f in ms.fields {
        if f.optional && o[f.name] == nil { continue }
        count += 1
    }
    try w.beginObject(count)
    for f in ms.fields {
        if f.optional && o[f.name] == nil { continue }
        try w.writeField(f.name)
        try encodeFieldGRON(w, o[f.name]!, f)
    }
    try w.endObject()
}

// ═══════════════════════════════════
// Main
// ═══════════════════════════════════

func main() throws {
    schema = try loadSchema()
    try FileManager.default.createDirectory(at: outDir, withIntermediateDirectories: true)
    try FileManager.default.createDirectory(at: outDir.appendingPathComponent("scalars"), withIntermediateDirectories: true)

    let manifestData = try Data(contentsOf: vecDir.appendingPathComponent("manifest.json"))
    let manifest = try JSONSerialization.jsonObject(with: manifestData) as! [String: Any]
    let scalarsSpec = manifest["scalars"] as! [String: [String: Any]]
    let testModels = manifest["testModels"] as! [String]

    var scalarResults: [String: Bool] = [:]
    var objectResults: [String: [String: Bool]] = [:]

    print("Swift: processing scalars...")
    for (name, spec) in scalarsSpec {
        let stype = spec["type"] as! String
        let refBuf = try Data(contentsOf: vecDir.appendingPathComponent("scalars/\(name).mp"))
        let r = MsgPackReader(refBuf)
        let w = MsgPackWriter()
        do {
            switch stype {
            case "int32": w.writeInt32(try r.readInt32())
            case "int64": w.writeInt64(try r.readInt64())
            case "uint32": w.writeUint32(try r.readUint32())
            case "uint64": w.writeUint64(try r.readUint64())
            case "float32": w.writeFloat32(try r.readFloat32())
            case "float64": w.writeFloat64(try r.readFloat64())
            case "string": w.writeString(try r.readString())
            case "bytes": w.writeBytes(try r.readBytes())
            case "bool": w.writeBool(try r.readBool())
            default: throw SCodecError(code: "ERR", message: "unknown type: \(stype)")
            }
            try w.toBytes().write(to: outDir.appendingPathComponent("scalars/\(name).mp"))
            scalarResults[name] = true
        } catch {
            print("  FAIL \(name): \(error)")
            scalarResults[name] = false
        }
    }

    print("Swift: processing objects...")
    for name in testModels {
        objectResults[name] = processObject(name)
    }

    try writeResults(scalarResults: scalarResults, objectResults: objectResults)
    let fail = scalarResults.values.filter { !$0 }.count + objectResults.values.filter { !($0["mp"] ?? false) || !($0["json"] ?? false) || !($0["gron"] ?? false) }.count
    let pass = scalarResults.count + objectResults.count - fail
    print("Swift done: \(pass) passed, \(fail) failed")
    if fail > 0 { exit(1) }
}

func processObject(_ name: String) -> [String: Bool] {
    var mpOk = false
    var jsonOk = false
    var gronOk = false

    do {
        let mpBuf = try Data(contentsOf: vecDir.appendingPathComponent("\(name).msgpack"))
        let o1 = try decodeModelObj(MsgPackReader(mpBuf), name)
        let mpOut = encodeModelMP(o1, name)
        try mpOut.write(to: outDir.appendingPathComponent("\(name).msgpack"))
        mpOk = true
    } catch {
        print("  FAIL \(name).msgpack: \(error)")
    }

    var compactOut: Data? = nil
    do {
        let jsonBuf = try Data(contentsOf: vecDir.appendingPathComponent("\(name).json"))
        let o2 = try decodeModelObj(JsonReader(jsonBuf), name)
        compactOut = encodeModelJSON(o2, name)
        try compactOut!.write(to: outDir.appendingPathComponent("\(name).json"))
        jsonOk = true
    } catch {
        print("  FAIL \(name).json: \(error)")
    }

    if compactOut != nil {
        let prettyPath = vecDir.appendingPathComponent("\(name).pretty.json")
        if FileManager.default.fileExists(atPath: prettyPath.path) {
            do {
                let prettyBuf = try Data(contentsOf: prettyPath)
                let o3 = try decodeModelObj(JsonReader(prettyBuf), name)
                let prettyOut = encodeModelJSON(o3, name)
                if prettyOut != compactOut {
                    print("  FAIL \(name).pretty.json: re-encoded bytes differ")
                    jsonOk = false
                }
            } catch {
                print("  FAIL \(name).pretty.json: \(error)")
                jsonOk = false
            }
        }
    }

    do {
        let gronBuf = try Data(contentsOf: vecDir.appendingPathComponent("\(name).gron"))
        let o4 = try decodeModelGron(GronReader(gronBuf), name)
        let gronOut = try encodeModelGRON(o4, name)
        try gronOut.write(to: outDir.appendingPathComponent("\(name).gron"))
        gronOk = true
    } catch {
        print("  FAIL \(name).gron: \(error)")
    }

    return ["mp": mpOk, "json": jsonOk, "gron": gronOk]
}

func writeResults(scalarResults: [String: Bool], objectResults: [String: [String: Bool]]) throws {
    var sb = ""
    sb += "{\"scalars\":{"
    var first = true
    for (name, pass) in scalarResults {
        if !first { sb += "," }
        sb += "\"\(name)\":{\"pass\":\(pass)}"
        first = false
    }
    sb += "},\"objects\":{"
    first = true
    for (name, res) in objectResults {
        if !first { sb += "," }
        sb += "\"\(name)\":{\"mp\":\(res["mp"] ?? false),\"json\":\(res["json"] ?? false),\"gron\":\(res["gron"] ?? false)}"
        first = false
    }
    sb += "}}"
    try sb.data(using: .utf8)!.write(to: outDir.appendingPathComponent("results.json"))
}

print("START"); try main()
