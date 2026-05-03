import Foundation

public final class SCodecError: Error, CustomStringConvertible {
    public let code: String
    public let message: String
    public init(code: String, message: String) { self.code = code; self.message = message }
    public var description: String { "SCodecError(\(code): \(message))" }
}

public class JsonReader: SpecReader {
    private let src: String
    private var _pos: Int = 0
    private var _firstField: [Bool] = []
    private var _firstElem: [Bool] = []

    public init(_ data: Data) {
        self.src = String(data: data, encoding: .utf8) ?? ""
    }

    public var pos: Int { _pos }

    private func ws() {
        while _pos < src.count {
            let c = src[src.index(src.startIndex, offsetBy: _pos)]
            if c == " " || c == "\t" || c == "\n" || c == "\r" { _pos += 1 }
            else { break }
        }
    }

    private func peek() throws -> Character {
        ws()
        if _pos >= src.count { throw SCodecError(code: "internal", message: "json: unexpected end of input") }
        return src[src.index(src.startIndex, offsetBy: _pos)]
    }

    private func read() throws -> Character {
        ws()
        if _pos >= src.count { throw SCodecError(code: "internal", message: "json: unexpected end of input") }
        let c = src[src.index(src.startIndex, offsetBy: _pos)]
        _pos += 1
        return c
    }

    private func expect(_ ch: Character) throws {
        let got = try read()
        if got != ch { throw SCodecError(code: "internal", message: "json: expected '\(ch)', got '\(got)' at \(_pos - 1)") }
    }

    private func parseString() throws -> String {
        try expect("\"")
        var result = ""
        while _pos < src.count {
            let c = src[src.index(src.startIndex, offsetBy: _pos)]
            if c == "\"" { _pos += 1; return result }
            if c == "\\" {
                _pos += 1
                if _pos >= src.count { throw SCodecError(code: "internal", message: "json: unexpected end of string escape") }
                let esc = src[src.index(src.startIndex, offsetBy: _pos)]
                switch esc {
                case "\"": result.append("\""); _pos += 1
                case "\\": result.append("\\"); _pos += 1
                case "/": result.append("/"); _pos += 1
                case "b": result.append("\u{08}"); _pos += 1
                case "f": result.append("\u{0C}"); _pos += 1
                case "n": result.append("\n"); _pos += 1
                case "r": result.append("\r"); _pos += 1
                case "t": result.append("\t"); _pos += 1
                case "u":
                    _pos += 1
                    if _pos + 4 > src.count { throw SCodecError(code: "internal", message: "json: incomplete unicode escape") }
                    let startIdx = src.index(src.startIndex, offsetBy: _pos)
                    let endIdx = src.index(startIdx, offsetBy: 4)
                    let hex = String(src[startIdx..<endIdx])
                    guard var cp = UInt32(hex, radix: 16) else {
                        throw SCodecError(code: "internal", message: "json: invalid unicode escape \\u\(hex)")
                    }
                    _pos += 4
                    if cp >= 0xD800 && cp <= 0xDBFF {
                        let slashIdx = src.index(src.startIndex, offsetBy: _pos)
                        let uIdx = src.index(src.startIndex, offsetBy: _pos + 1)
                        if _pos + 6 <= src.count && src[slashIdx] == "\\" && src[uIdx] == "u" {
                            _pos += 2
                            let start2 = src.index(src.startIndex, offsetBy: _pos)
                            let end2 = src.index(start2, offsetBy: 4)
                            let hex2 = String(src[start2..<end2])
                            guard let low = UInt32(hex2, radix: 16) else {
                                throw SCodecError(code: "internal", message: "json: invalid low surrogate")
                            }
                            _pos += 4
                            if low >= 0xDC00 && low <= 0xDFFF {
                                cp = 0x10000 + (cp - 0xD800) * 0x400 + (low - 0xDC00)
                            } else {
                                throw SCodecError(code: "internal", message: "json: expected low surrogate")
                            }
                        } else {
                            throw SCodecError(code: "internal", message: "json: expected low surrogate")
                        }
                    }
                    if let scalar = UnicodeScalar(cp) { result.append(Character(scalar)) }
                default: throw SCodecError(code: "internal", message: "json: invalid escape '\\\(esc)'")
                }
            } else if let ascii = c.asciiValue, ascii < 0x20 {
                throw SCodecError(code: "internal", message: "json: unescaped control char")
            } else {
                result.append(c); _pos += 1
            }
        }
        throw SCodecError(code: "internal", message: "json: unterminated string")
    }

    private func parseNumberRaw() throws -> String {
        ws()
        let start = _pos
        if _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] == "-" { _pos += 1 }
        if _pos >= src.count { throw SCodecError(code: "internal", message: "json: unexpected end of number") }
        let ch = src[src.index(src.startIndex, offsetBy: _pos)]
        if ch == "0" { _pos += 1 }
        else if ch >= "1" && ch <= "9" {
            _pos += 1
            while _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] >= "0" && src[src.index(src.startIndex, offsetBy: _pos)] <= "9" { _pos += 1 }
        } else { throw SCodecError(code: "internal", message: "json: invalid number") }
        if _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] == "." {
            _pos += 1
            if _pos >= src.count || src[src.index(src.startIndex, offsetBy: _pos)] < "0" || src[src.index(src.startIndex, offsetBy: _pos)] > "9" {
                throw SCodecError(code: "internal", message: "json: invalid fraction")
            }
            while _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] >= "0" && src[src.index(src.startIndex, offsetBy: _pos)] <= "9" { _pos += 1 }
        }
        if _pos < src.count && (src[src.index(src.startIndex, offsetBy: _pos)] == "e" || src[src.index(src.startIndex, offsetBy: _pos)] == "E") {
            _pos += 1
            if _pos < src.count && (src[src.index(src.startIndex, offsetBy: _pos)] == "+" || src[src.index(src.startIndex, offsetBy: _pos)] == "-") { _pos += 1 }
            if _pos >= src.count || src[src.index(src.startIndex, offsetBy: _pos)] < "0" || src[src.index(src.startIndex, offsetBy: _pos)] > "9" {
                throw SCodecError(code: "internal", message: "json: invalid exponent")
            }
            while _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] >= "0" && src[src.index(src.startIndex, offsetBy: _pos)] <= "9" { _pos += 1 }
        }
        let startIdx = src.index(src.startIndex, offsetBy: start)
        let endIdx = src.index(src.startIndex, offsetBy: _pos)
        return String(src[startIdx..<endIdx])
    }

    public func readString() throws -> String { try parseString() }

    public func readBool() throws -> Bool {
        let ch = try peek()
        if ch == "t" { for c in "true" { if try read() != c { throw SCodecError(code: "internal", message: "json: expected true") } }; return true }
        if ch == "f" { for c in "false" { if try read() != c { throw SCodecError(code: "internal", message: "json: expected false") } }; return false }
        throw SCodecError(code: "internal", message: "json: expected bool")
    }

    public func readInt32() throws -> Int32 {
        let raw = try parseNumberRaw()
        guard let v = Int32(raw) else { throw SCodecError(code: "internal", message: "json: invalid int32: \(raw)") }
        return v
    }

    public func readInt64() throws -> Int64 {
        if try peek() == "\"" {
            let s = try parseString()
            guard let v = Int64(s) else { throw SCodecError(code: "internal", message: "json: invalid int64: \(s)") }
            return v
        }
        let raw = try parseNumberRaw()
        guard let v = Int64(raw) else { throw SCodecError(code: "internal", message: "json: invalid int64: \(raw)") }
        return v
    }

    public func readUint32() throws -> UInt32 {
        let raw = try parseNumberRaw()
        guard let v = UInt32(raw) else { throw SCodecError(code: "internal", message: "json: invalid uint32: \(raw)") }
        return v
    }

    public func readUint64() throws -> UInt64 {
        if try peek() == "\"" {
            let s = try parseString()
            guard let v = UInt64(s) else { throw SCodecError(code: "internal", message: "json: invalid uint64: \(s)") }
            return v
        }
        let raw = try parseNumberRaw()
        guard let v = UInt64(raw) else { throw SCodecError(code: "internal", message: "json: invalid uint64: \(raw)") }
        return v
    }

    public func readFloat32() throws -> Float {
        if try peek() == "\"" {
            let s = try parseString()
            if s == "NaN" { return Float.nan }
            if s == "Infinity" { return Float.infinity }
            if s == "-Infinity" { return -Float.infinity }
            guard let v = Float(s) else { throw SCodecError(code: "internal", message: "json: invalid float32: \(s)") }
            return v
        }
        let raw = try parseNumberRaw()
        guard let v = Float(raw) else { throw SCodecError(code: "internal", message: "json: invalid float32: \(raw)") }
        return v
    }

    public func readFloat64() throws -> Double {
        if try peek() == "\"" {
            let s = try parseString()
            if s == "NaN" { return Double.nan }
            if s == "Infinity" { return Double.infinity }
            if s == "-Infinity" { return -Double.infinity }
            guard let v = Double(s) else { throw SCodecError(code: "internal", message: "json: invalid float64: \(s)") }
            return v
        }
        let raw = try parseNumberRaw()
        guard let v = Double(raw) else { throw SCodecError(code: "internal", message: "json: invalid float64: \(raw)") }
        return v
    }

    public func readNull() throws {
        for c in "null" { if try read() != c { throw SCodecError(code: "internal", message: "json: expected null") } }
    }

    public func readBytes() throws -> Data {
        let s = try parseString()
        guard let d = Data(base64Encoded: s) else { throw SCodecError(code: "internal", message: "json: invalid base64") }
        return d
    }

    public func readEnum() throws -> String { try parseString() }

    public func beginObject() throws {
        try expect("{")
        _firstField.append(true)
    }

    public func hasNextField() throws -> Bool {
        let ch = try peek()
        if ch == "}" {
            _firstField.removeLast()
            return false
        }
        let top = _firstField.count - 1
        if !_firstField[top] {
            if ch != "," { throw SCodecError(code: "internal", message: "json: expected ',' or '}', got '\(ch)'") }
            _pos += 1
        } else {
            _firstField[top] = false
        }
        return true
    }

    public func readFieldName() throws -> String {
        let key = try parseString()
        ws()
        if _pos < src.count && src[src.index(src.startIndex, offsetBy: _pos)] == ":" {
            _pos += 1
        } else {
            throw SCodecError(code: "internal", message: "json: expected ':' after field name '\(key)'")
        }
        return key
    }

    public func endObject() throws { try expect("}") }

    public func beginArray() throws {
        try expect("[")
        _firstElem.append(true)
    }

    public func hasNextElement() throws -> Bool {
        let ch = try peek()
        if ch == "]" {
            _firstElem.removeLast()
            return false
        }
        let top = _firstElem.count - 1
        if !_firstElem[top] {
            if ch != "," { throw SCodecError(code: "internal", message: "json: expected ',' or ']', got '\(ch)'") }
            _pos += 1
        } else {
            _firstElem[top] = false
        }
        return true
    }

    public func endArray() throws { try expect("]") }

    public func isNull() throws -> Bool { try peek() == "n" }

    public func skip() throws {
        ws()
        if _pos >= src.count { throw SCodecError(code: "internal", message: "json: unexpected end of input") }
        let ch = src[src.index(src.startIndex, offsetBy: _pos)]
        switch ch {
        case "\"":
            _pos += 1
            while _pos < src.count {
                let c = src[src.index(src.startIndex, offsetBy: _pos)]
                if c == "\\" { _pos += 2 }
                else if c == "\"" { _pos += 1; return }
                else { _pos += 1 }
            }
            throw SCodecError(code: "internal", message: "json: unterminated string in skip")
        case "{":
            try beginObject()
            while try hasNextField() {
                _ = try readFieldName()
                try skip()
            }
            try endObject()
        case "[":
            try beginArray()
            while try hasNextElement() {
                try skip()
            }
            try endArray()
        case "t": for c in "true" { if try read() != c { throw SCodecError(code: "internal", message: "json: skip expected true") } }
        case "f": for c in "false" { if try read() != c { throw SCodecError(code: "internal", message: "json: skip expected false") } }
        case "n": for c in "null" { if try read() != c { throw SCodecError(code: "internal", message: "json: skip expected null") } }
        default:
            if (ch >= "0" && ch <= "9") || ch == "-" { _ = try parseNumberRaw() }
            else { throw SCodecError(code: "internal", message: "json: unexpected '\(ch)' in skip") }
        }
    }
}
