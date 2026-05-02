import Foundation

public class GronWriter: SpecWriter {
    private var lines: [String] = []
    private var segments: [String] = ["json"]
    private var nesting: [(depth: Int, arrayIndex: Int)] = []

    private func buildPath() -> String {
        var r = segments[0]
        for i in 1..<segments.count {
            if segments[i].starts(with: "[") { r += segments[i] }
            else { r += "." + segments[i] }
        }
        return r
    }

    private func escape(_ s: String) -> String {
        var r = ""
        for c in s {
            let v = c.unicodeScalars.first!.value
            switch v {
            case 0x22: r += "\\\""
            case 0x5C: r += "\\\\"
            case 0x08: r += "\\b"
            case 0x0C: r += "\\f"
            case 0x0A: r += "\\n"
            case 0x0D: r += "\\r"
            case 0x09: r += "\\t"
            case 0...31: r += "\\u" + String(v, radix: 16).padding(toLength: 4, withPad: "0", startingAt: 0)
            default: r.append(c)
            }
        }
        return r
    }

    private func b64(_ data: Data) -> String {
        let chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        var s = ""
        var i = 0
        while i < data.count {
            let b0 = Int(data[i]); i += 1
            let hasB1 = i < data.count; let b1 = hasB1 ? Int(data[i]) : 0; if hasB1 { i += 1 }
            let hasB2 = i < data.count; let b2 = hasB2 ? Int(data[i]) : 0; if hasB2 { i += 1 }
            s.append(chars[chars.index(chars.startIndex, offsetBy: b0 >> 2)])
            s.append(chars[chars.index(chars.startIndex, offsetBy: ((b0 & 3) << 4) | (b1 >> 4))])
            s.append(hasB1 ? chars[chars.index(chars.startIndex, offsetBy: ((b1 & 0xF) << 2) | (b2 >> 6))] : "=")
            s.append(hasB2 ? chars[chars.index(chars.startIndex, offsetBy: b2 & 0x3F)] : "=")
        }
        return s
    }

    private func emit(_ raw: String) {
        lines.append("\(buildPath()) = \(raw);")
    }

    public init() {}

    public func writeString(_ value: String) { emit("\"\(escape(value))\"") }
    public func writeBool(_ value: Bool) { emit(value ? "true" : "false") }
    public func writeInt32(_ value: Int32) { emit("\(value)") }
    public func writeInt64(_ value: Int64) { emit("\"\(value)\"") }
    public func writeUint32(_ value: UInt32) { emit("\(value)") }
    public func writeUint64(_ value: UInt64) { emit("\"\(value)\"") }

    public func writeFloat32(_ value: Float) {
        if value.isNaN || value.isInfinite { fatalError("float32: NaN/Infinity not valid") }
        emit(formatFloat32(value))
    }

    public func writeFloat64(_ value: Double) {
        if value.isNaN || value.isInfinite { fatalError("float64: NaN/Infinity not valid") }
        emit(formatFloat64(value))
    }

    public func writeNull() { emit("null") }
    public func writeBytes(_ value: Data) { emit("\"\(b64(value))\"") }

    public func beginObject(_ fieldCount: Int) {
        lines.append("\(buildPath()) = {};")
        nesting.append((depth: segments.count, arrayIndex: -1))
    }

    public func writeField(_ name: String) {
        let top = nesting.last!
        if segments.count > top.depth { segments[segments.count - 1] = name }
        else { segments.append(name) }
    }

    public func endObject() {
        let info = nesting.removeLast()
        while segments.count > info.depth { segments.removeLast() }
    }

    public func beginArray(_ elementCount: Int) {
        lines.append("\(buildPath()) = [];")
        nesting.append((depth: segments.count, arrayIndex: -1))
    }

    public func nextElement() {
        let info = nesting[nesting.count - 1]
        nesting[nesting.count - 1].arrayIndex = info.arrayIndex + 1
        let seg = "[\(info.arrayIndex + 1)]"
        if segments.count > info.depth { segments[segments.count - 1] = seg }
        else { segments.append(seg) }
    }

    public func endArray() {
        let info = nesting.removeLast()
        while segments.count > info.depth { segments.removeLast() }
    }

    public func writeEnum(_ value: String) { emit("\"\(escape(value))\"") }

    public func toBytes() -> Data {
        (lines.joined(separator: "\n") + "\n").data(using: .utf8)!
    }
}
