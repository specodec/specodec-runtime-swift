import Foundation

public class MsgPackWriter: SpecWriter {
    private var buf: [UInt8] = []

    public init() {}

    private func writeByte(_ b: UInt8) { buf.append(b) }
    private func writeU16(_ v: UInt16) { buf.append(UInt8(v >> 8)); buf.append(UInt8(v & 0xFF)) }
    private func writeU32(_ v: UInt32) { buf.append(UInt8(v >> 24)); buf.append(UInt8((v >> 16) & 0xFF)); buf.append(UInt8((v >> 8) & 0xFF)); buf.append(UInt8(v & 0xFF)) }
    private func writeU64(_ v: UInt64) { writeU32(UInt32(v >> 32)); writeU32(UInt32(v & 0xFFFFFFFF)) }

    public func writeString(_ value: String) {
        let bytes = Array(value.utf8)
        let len = bytes.count
        if len <= 0x1F { writeByte(0xA0 | UInt8(len)) }
        else if len <= 0xFF { writeByte(0xD9); writeByte(UInt8(len)) }
        else if len <= 0xFFFF { writeByte(0xDA); writeU16(UInt16(len)) }
        else { writeByte(0xDB); writeU32(UInt32(len)) }
        buf.append(contentsOf: bytes)
    }

    public func writeBool(_ value: Bool) { writeByte(value ? 0xC3 : 0xC2) }

    public func writeInt32(_ value: Int32) {
        if value >= 0 && value <= 0x7F { writeByte(UInt8(value)) }
        else if value < 0 && value >= -0x20 { writeByte(UInt8(truncatingIfNeeded: value)) }
        else if value >= 0 && value <= 0xFF { writeByte(0xCC); writeByte(UInt8(value)) }
        else if value >= 0 && value <= 0xFFFF { writeByte(0xCD); writeU16(UInt16(value)) }
        else if value >= 0 { writeByte(0xCE); writeU32(UInt32(value)) }
        else if value >= -0x80 { writeByte(0xD0); writeByte(UInt8(truncatingIfNeeded: value)) }
        else if value >= -0x8000 { writeByte(0xD1); writeU16(UInt16(truncatingIfNeeded: value)) }
        else { writeByte(0xD2); writeU32(UInt32(truncatingIfNeeded: value)) }
    }

    public func writeInt64(_ value: Int64) {
        if value >= 0 && value <= 0x7F { writeByte(UInt8(value)) }
        else if value < 0 && value >= -0x20 { writeByte(UInt8(truncatingIfNeeded: value)) }
        else if value >= 0 && value <= 0xFF { writeByte(0xCC); writeByte(UInt8(value)) }
        else if value >= 0 && value <= 0xFFFF { writeByte(0xCD); writeU16(UInt16(value)) }
        else if value >= 0 && value <= Int64(UInt32.max) { writeByte(0xCE); writeU32(UInt32(value)) }
        else if value >= 0 { writeByte(0xCF); writeU64(UInt64(value)) }
        else if value >= -0x80 { writeByte(0xD0); writeByte(UInt8(truncatingIfNeeded: value)) }
        else if value >= -0x8000 { writeByte(0xD1); writeU16(UInt16(truncatingIfNeeded: value)) }
        else if value >= -0x80000000 { writeByte(0xD2); writeU32(UInt32(truncatingIfNeeded: value)) }
        else { writeByte(0xD3); writeU64(UInt64(bitPattern: value)) }
    }

    public func writeUint32(_ value: UInt32) {
        if value <= 0x7F { writeByte(UInt8(value)) }
        else if value <= 0xFF { writeByte(0xCC); writeByte(UInt8(value)) }
        else if value <= 0xFFFF { writeByte(0xCD); writeU16(UInt16(value)) }
        else { writeByte(0xCE); writeU32(value) }
    }

    public func writeUint64(_ value: UInt64) {
        if value <= 0x7F { writeByte(UInt8(value)) }
        else if value <= 0xFF { writeByte(0xCC); writeByte(UInt8(value)) }
        else if value <= 0xFFFF { writeByte(0xCD); writeU16(UInt16(value)) }
        else if value <= 0xFFFFFFFF { writeByte(0xCE); writeU32(UInt32(value)) }
        else { writeByte(0xCF); writeU64(value) }
    }

    public func writeFloat32(_ value: Float) {
        writeByte(0xCA)
        let bits = value.bitPattern
        writeU32(bits)
    }

    public func writeFloat64(_ value: Double) {
        writeByte(0xCB)
        let bits = value.bitPattern
        writeU64(bits)
    }

    public func writeNull() { writeByte(0xC0) }

    public func writeBytes(_ value: Data) {
        let len = value.count
        if len <= 0xFF { writeByte(0xC4); writeByte(UInt8(len)) }
        else if len <= 0xFFFF { writeByte(0xC5); writeU16(UInt16(len)) }
        else { writeByte(0xC6); writeU32(UInt32(len)) }
        buf.append(contentsOf: value)
    }

    public func beginObject(_ fieldCount: Int) {
        if fieldCount <= 0x0F { writeByte(0x80 | UInt8(fieldCount)) }
        else if fieldCount <= 0xFFFF { writeByte(0xDE); writeU16(UInt16(fieldCount)) }
        else { writeByte(0xDF); writeU32(UInt32(fieldCount)) }
    }

    public func writeField(_ name: String) { writeString(name) }
    public func writeEnum(_ value: String) { writeString(value) }
    public func endObject() {}

    public func beginArray(_ elementCount: Int) {
        if elementCount <= 0x0F { writeByte(0x90 | UInt8(elementCount)) }
        else if elementCount <= 0xFFFF { writeByte(0xDC); writeU16(UInt16(elementCount)) }
        else { writeByte(0xDD); writeU32(UInt32(elementCount)) }
    }

    public func nextElement() {}
    public func endArray() {}

    public func toBytes() -> Data { return Data(buf) }
}
