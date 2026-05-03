import Foundation

public class GronReader: SpecReader {
    private var lines: [(path: String, rawValue: String)] = []
    private var cursor: Int = 0
    private var ctx: [(prefix: String, type: String, index: Int)] = []

    public init(_ data: Data) {
        guard let text = String(data: data, encoding: .utf8) else { return }
        for raw in text.split(separator: "\n", omittingEmptySubsequences: false) {
            let line = raw.trimmingCharacters(in: .whitespacesAndNewlines)
            if line.isEmpty { continue }
            guard let eq = line.range(of: " = ") else { continue }
            let path = String(line[..<eq.lowerBound])
            var val = String(line[eq.upperBound...])
            if val.hasSuffix(";") { val = String(val.dropLast()) }
            lines.append((path, val))
        }
    }

    private func unescape(_ s: String) throws -> String {
        guard s.count >= 2 && s.first == "\"" && s.last == "\"" else {
            throw SCodecError(code: "internal", message: "gron: expected quoted string")
        }
        let inner = String(s.dropFirst().dropLast())
        var r = ""
        var chars = Array(inner)
        var i = 0
        while i < chars.count {
            if chars[i] == "\\" && i + 1 < chars.count {
                i += 1
                switch chars[i] {
                case "\"": r.append("\"")
                case "\\": r.append("\\")
                case "/": r.append("/")
                case "b": r.append("\u{08}")
                case "f": r.append("\u{0C}")
                case "n": r.append("\n")
                case "r": r.append("\r")
                case "t": r.append("\t")
                case "u":
                    let hex = String(chars[i+1..<min(i+5, chars.count)])
                    if let v = UInt16(hex, radix: 16), let sc = UnicodeScalar(v) { r.append(Character(sc)) }
                    i += 4
                default: r.append(chars[i])
                }
            } else {
                r.append(chars[i])
            }
            i += 1
        }
        return r
    }

    private func b64decode(_ s: String) -> Data {
        let chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        var result = Data()
        let padCount = s.reversed().prefix(while: { $0 == "=" }).count
        var i = s.startIndex
        while i < s.endIndex && s[i] != "=" {
            let b0 = chars.distance(from: chars.startIndex, to: chars.firstIndex(of: s[i])!); i = s.index(after: i)
            var b1 = 0
            if i < s.endIndex && s[i] != "=" { b1 = chars.distance(from: chars.startIndex, to: chars.firstIndex(of: s[i])!); i = s.index(after: i) }
            var b2 = 0
            if i < s.endIndex && s[i] != "=" { b2 = chars.distance(from: chars.startIndex, to: chars.firstIndex(of: s[i])!); i = s.index(after: i) }
            var b3 = 0
            if i < s.endIndex && s[i] != "=" { b3 = chars.distance(from: chars.startIndex, to: chars.firstIndex(of: s[i])!); i = s.index(after: i) }
            result.append(UInt8((b0 << 2) | (b1 >> 4)))
            result.append(UInt8(((b1 & 0xF) << 4) | (b2 >> 2)))
            result.append(UInt8(((b2 & 3) << 6) | b3))
        }
        if padCount > 0 && result.count >= padCount { result.removeSubrange(Range(uncheckedBounds: (lower: result.count - padCount, upper: result.count))) }
        return result
    }

    public func readString() throws -> String { let v = try unescape(lines[cursor].rawValue); cursor += 1; return v }
    public func readBool() throws -> Bool { let v = lines[cursor].rawValue == "true"; cursor += 1; return v }
    public func readInt32() throws -> Int32 { let v = Int32(lines[cursor].rawValue)!; cursor += 1; return v }
    public func readInt64() throws -> Int64 { let v = Int64(try unescape(lines[cursor].rawValue))!; cursor += 1; return v }
    public func readUint32() throws -> UInt32 { let v = UInt32(lines[cursor].rawValue)!; cursor += 1; return v }
    public func readUint64() throws -> UInt64 { let v = UInt64(try unescape(lines[cursor].rawValue))!; cursor += 1; return v }
    public func readFloat32() throws -> Float {
        let v = lines[cursor].rawValue; cursor += 1
        if v == "\"NaN\"" { return Float.nan }
        if v == "\"Infinity\"" { return Float.infinity }
        if v == "\"-Infinity\"" { return -Float.infinity }
        return Float(v)!
    }
    public func readFloat64() throws -> Double {
        let v = lines[cursor].rawValue; cursor += 1
        if v == "\"NaN\"" { return Double.nan }
        if v == "\"Infinity\"" { return Double.infinity }
        if v == "\"-Infinity\"" { return -Double.infinity }
        return Double(v)!
    }
    public func readNull() throws {
        guard lines[cursor].rawValue == "null" else { throw SCodecError(code: "internal", message: "gron: expected null") }
        cursor += 1
    }
    public func readBytes() throws -> Data { let v = b64decode(try unescape(lines[cursor].rawValue)); cursor += 1; return v }
    public func readEnum() throws -> String { return try readString() }

    public func beginObject() throws {
        let line = lines[cursor]; cursor += 1
        ctx.append((prefix: line.path, type: "object", index: -1))
    }

    public func hasNextField() throws -> Bool {
        guard cursor < lines.count else { return false }
        let pfx = ctx.last!.prefix + "."
        let p = lines[cursor].path
        guard p.hasPrefix(pfx) else { return false }
        let rem = String(p.dropFirst(pfx.count))
        return !rem.contains(".") && !rem.contains("[")
    }

    public func readFieldName() throws -> String {
        let pfx = ctx.last!.prefix + "."
        return String(lines[cursor].path.dropFirst(pfx.count))
    }

    public func endObject() throws { _ = ctx.removeLast() }

    public func beginArray() throws {
        let line = lines[cursor]; cursor += 1
        ctx.append((prefix: line.path, type: "array", index: -1))
    }

    public func hasNextElement() throws -> Bool {
        guard cursor < lines.count else { return false }
        let arr = ctx.last!
        let ni = arr.index + 1
        let exp = arr.prefix + "[\(ni)]"
        let p = lines[cursor].path
        let hasNext = p == exp || p.hasSuffix("." + exp) || p.hasPrefix(exp + ".") || p.hasPrefix(exp + "[")
        if hasNext { ctx[ctx.count - 1].index = ni }
        return hasNext
    }

    public func endArray() throws { _ = ctx.removeLast() }

    public func isNull() throws -> Bool {
        return cursor < lines.count && lines[cursor].rawValue == "null"
    }

    public func skip() throws {
        let sp = lines[cursor].path; cursor += 1
        while cursor < lines.count {
            let np = lines[cursor].path
            if np.count > sp.count && (np.hasPrefix(sp + ".") || np.hasPrefix(sp + "[")) { cursor += 1 }
            else { break }
        }
    }
}
