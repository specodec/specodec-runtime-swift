import Foundation

public class MsgPackReader: SpecReader {
    private let data: Data
    private var _pos: Int = 0
    private var containerCount: [Int] = []

    public init(_ data: Data) {
        self.data = data
    }

    public var pos: Int { _pos }

    private func readByte() throws -> UInt8 {
        guard _pos < data.count else {
            throw SCodecError(code: "internal", message: "msgpack: unexpected end of data")
        }
        let b = data[_pos]
        _pos += 1
        return b
    }

    private func readU16() throws -> UInt16 {
        guard _pos + 2 <= data.count else { throw eof() }
        let v = UInt16(data[_pos]) << 8 | UInt16(data[_pos + 1])
        _pos += 2
        return v
    }

    private func readU32() throws -> UInt32 {
        guard _pos + 4 <= data.count else { throw eof() }
        let v = UInt32(data[_pos]) << 24 | UInt32(data[_pos + 1]) << 16 |
                UInt32(data[_pos + 2]) << 8 | UInt32(data[_pos + 3])
        _pos += 4
        return v
    }

    private func readI16() throws -> Int16 { Int16(bitPattern: try readU16()) }
    private func readI32() throws -> Int32 { Int32(bitPattern: try readU32()) }

    private func readF32() throws -> Float {
        let bits = try readU32()
        return Float(bitPattern: bits)
    }

    private func readF64() throws -> Double {
        guard _pos + 8 <= data.count else { throw eof() }
        var raw: UInt64 = 0
        for i in 0..<8 {
            raw = (raw << 8) | UInt64(data[_pos + i])
        }
        _pos += 8
        return Double(bitPattern: raw)
    }

    private func eof() -> SCodecError {
        SCodecError(code: "internal", message: "msgpack: unexpected end of data")
    }

    public func readMapHeader() throws -> Int {
        let b = try readByte()
        if b & 0xF0 == 0x80 { return Int(b & 0x0F) }
        if b == 0xDE { return Int(try readU16()) }
        if b == 0xDF { return Int(try readU32()) }
        throw SCodecError(code: "internal", message: "msgpack: expected map, got 0x\(String(b, radix: 16))")
    }

    public func readArrayHeader() throws -> Int {
        let b = try readByte()
        if b & 0xF0 == 0x90 { return Int(b & 0x0F) }
        if b == 0xDC { return Int(try readU16()) }
        if b == 0xDD { return Int(try readU32()) }
        throw SCodecError(code: "internal", message: "msgpack: expected array, got 0x\(String(b, radix: 16))")
    }

    public func readString() throws -> String {
        let b = try readByte()
        let len: Int
        if b & 0xE0 == 0xA0 { len = Int(b & 0x1F) }
        else if b == 0xD9 { len = Int(try readByte()) }
        else if b == 0xDA { len = Int(try readU16()) }
        else if b == 0xDB { len = Int(try readU32()) }
        else { throw SCodecError(code: "internal", message: "msgpack: expected string, got 0x\(String(b, radix: 16))") }
        guard _pos + len <= data.count else { throw eof() }
        let s = String(data: data[_pos..<_pos + len], encoding: .utf8) ?? ""
        _pos += len
        return s
    }

    private func readU64() throws -> UInt64 {
        guard _pos + 8 <= data.count else { throw eof() }
        var raw: UInt64 = 0
        for i in 0..<8 {
            raw = (raw << 8) | UInt64(data[_pos + i])
        }
        _pos += 8
        return raw
    }

    private func readI64() throws -> Int64 {
        Int64(bitPattern: try readU64())
    }

    public func readInt() throws -> Int64 {
        let b = try readByte()
        if b <= 0x7F { return Int64(b) }
        if b >= 0xE0 { return Int64(Int8(bitPattern: b)) }
        switch b {
        case 0xCC: return Int64(try readByte())
        case 0xCD: return Int64(try readU16())
        case 0xCE: return Int64(try readU32())
        case 0xCF: return Int64(bitPattern: try readU64())
        case 0xD0: return Int64(Int8(bitPattern: try readByte()))
        case 0xD1: return Int64(try readI16())
        case 0xD2: return Int64(try readI32())
        case 0xD3: return try readI64()
        default: throw SCodecError(code: "internal", message: "msgpack: expected int, got 0x\(String(b, radix: 16))")
        }
    }

    public func readFloat() throws -> Double {
        let b = try readByte()
        if b == 0xCA { return Double(try readF32()) }
        if b == 0xCB { return try readF64() }
        if b <= 0x7F { return Double(b) }
        if b >= 0xE0 { return Double(Int8(bitPattern: b)) }
        switch b {
        case 0xCC: return Double(try readByte())
        case 0xCD: return Double(try readU16())
        case 0xCE: return Double(try readU32())
        case 0xD0: return Double(Int8(bitPattern: try readByte()))
        case 0xD1: return Double(try readI16())
        case 0xD2: return Double(try readI32())
        default: throw SCodecError(code: "internal", message: "msgpack: expected float, got 0x\(String(b, radix: 16))")
        }
    }

    public func readBool() throws -> Bool {
        let b = try readByte()
        if b == 0xC3 { return true }
        if b == 0xC2 { return false }
        throw SCodecError(code: "internal", message: "msgpack: expected bool, got 0x\(String(b, radix: 16))")
    }

    public func readNull() throws {
        let b = try readByte()
        if b != 0xC0 {
            throw SCodecError(code: "internal", message: "msgpack: expected null, got 0x\(String(b, radix: 16))")
        }
    }

    public func isNull() throws -> Bool {
        return _pos < data.count && data[_pos] == 0xC0
    }

    public func readInt32() throws -> Int32 { return Int32(truncatingIfNeeded: try readInt()) }
    public func readInt64() throws -> Int64 { return try readInt() }
    public func readUint32() throws -> UInt32 { return UInt32(truncatingIfNeeded: try readInt()) }
    public func readUint64() throws -> UInt64 { return UInt64(bitPattern: try readInt()) }
    public func readFloat32() throws -> Float { return Float(try readFloat()) }
    public func readFloat64() throws -> Double { return try readFloat() }
    public func readBytes() throws -> Data {
        let b = try readByte()
        let len: Int
        if b == 0xC4 { len = Int(try readByte()) }
        else if b == 0xC5 { len = Int(try readU16()) }
        else if b == 0xC6 { len = Int(try readU32()) }
        else { throw SCodecError(code: "internal", message: "msgpack: expected bin, got 0x\(String(b, radix: 16))") }
        guard _pos + len <= data.count else { throw eof() }
        let d = data[_pos..<_pos + len]
        _pos += len
        return d
    }
    public func readEnum() throws -> String { return try readString() }

    public func skip() throws {
        let b = try readByte()
        if b <= 0x7F || b >= 0xE0 { return }
        if b & 0xF0 == 0x80 {
            for _ in 0..<(b & 0x0F) { try skip(); try skip() }
            return
        }
        if b & 0xF0 == 0x90 {
            for _ in 0..<(b & 0x0F) { try skip() }
            return
        }
        if b & 0xE0 == 0xA0 { _pos += Int(b & 0x1F); return }
        switch b {
        case 0xC0, 0xC2, 0xC3: break
        case 0xCC, 0xD0: _pos += 1
        case 0xCD, 0xD1: _pos += 2
        case 0xCE, 0xD2, 0xCA: _pos += 4
        case 0xCF, 0xD3, 0xCB: _pos += 8
        case 0xD9: _pos += Int(try readByte())
        case 0xDA: _pos += Int(try readU16())
        case 0xDB: _pos += Int(try readU32())
        case 0xC4: _pos += Int(try readByte())
        case 0xC5: _pos += Int(try readU16())
        case 0xC6: _pos += Int(try readU32())
        case 0xD4: _pos += 2
        case 0xD5: _pos += 3
        case 0xD6: _pos += 5
        case 0xD7: _pos += 9
        case 0xD8: _pos += 17
        case 0xC7: _pos += 1 + Int(try readByte())
        case 0xC8: _pos += 1 + Int(try readU16())
        case 0xC9: _pos += 1 + Int(try readU32())
        case 0xDC: let n = try readU16(); for _ in 0..<n { try skip() }
        case 0xDD: let n = try readU32(); for _ in 0..<n { try skip() }
        case 0xDE: let n = try readU16(); for _ in 0..<n { try skip(); try skip() }
        case 0xDF: let n = try readU32(); for _ in 0..<n { try skip(); try skip() }
        default: throw SCodecError(code: "internal", message: "msgpack: unknown format 0x\(String(b, radix: 16))")
        }
    }

    public func beginObject() throws {
        let n = try readMapHeader()
        containerCount.append(n)
    }

    public func hasNextField() throws -> Bool {
        let top = containerCount.count - 1
        if containerCount[top] > 0 {
            containerCount[top] -= 1
            return true
        }
        containerCount.removeLast()
        return false
    }

    public func readFieldName() throws -> String {
        return try readString()
    }

    public func endObject() throws {}

    public func beginArray() throws {
        let n = try readArrayHeader()
        containerCount.append(n)
    }

    public func hasNextElement() throws -> Bool {
        let top = containerCount.count - 1
        if containerCount[top] > 0 {
            containerCount[top] -= 1
            return true
        }
        containerCount.removeLast()
        return false
    }

    public func endArray() throws {}
}
