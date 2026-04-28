import Foundation

public class JsonWriter {
    private var buf: [UInt8] = []
    private var firstItem: [Bool] = []

    private func escape(_ s: String) {
        for scalar in s.unicodeScalars {
            switch scalar.value {
            case 0x22: buf.append(contentsOf: [0x5C, 0x22])
            case 0x5C: buf.append(contentsOf: [0x5C, 0x5C])
            case 0x08: buf.append(contentsOf: [0x5C, 0x62])
            case 0x0C: buf.append(contentsOf: [0x5C, 0x66])
            case 0x0A: buf.append(contentsOf: [0x5C, 0x6E])
            case 0x0D: buf.append(contentsOf: [0x5C, 0x72])
            case 0x09: buf.append(contentsOf: [0x5C, 0x74])
            case 0x00...0x1F:
                buf.append(contentsOf: [0x5C, 0x75, 0x30, 0x30])
                let hex = String(scalar.value, radix: 16)
                buf.append(Character(hex.count == 1 ? "0" : hex[hex.startIndex]).asciiValue!)
                buf.append(Character(hex.last!).asciiValue!)
            default:
                buf.append(contentsOf: String(scalar).utf8)
            }
        }
    }

    private func b64(_ data: Data) -> String {
        let chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        var s = ""
        var i = data.startIndex
        while i < data.endIndex {
            let b0 = Int(data[i]); i += 1
            let b1 = i < data.endIndex ? Int(data[i]) : 0; if i < data.endIndex { i += 1 }
            let b2 = i < data.endIndex ? Int(data[i]) : 0; if i < data.endIndex { i += 1 }
            s.append(chars[chars.index(chars.startIndex, offsetBy: b0 >> 2)])
            s.append(chars[chars.index(chars.startIndex, offsetBy: ((b0 & 3) << 4) | (b1 >> 4))])
            s.append(i - 1 < data.endIndex && b1 != 0 || i <= data.endIndex ? chars[chars.index(chars.startIndex, offsetBy: ((b1 & 0xF) << 2) | (b2 >> 6))] : "=")
            s.append(i < data.endIndex ? chars[chars.index(chars.startIndex, offsetBy: b2 & 0x3F)] : "=")
        }
        return s
    }

    public func writeString(_ value: String) {
        buf.append(0x22)
        escape(value)
        buf.append(0x22)
    }

    public func writeBool(_ value: Bool) {
        buf.append(contentsOf: value ? "true".utf8 : "false".utf8)
    }

    public func writeInt32(_ value: Int32) {
        buf.append(contentsOf: String(value).utf8)
    }

    public func writeInt64(_ value: Int64) {
        buf.append(0x22)
        buf.append(contentsOf: String(value).utf8)
        buf.append(0x22)
    }

    public func writeUint32(_ value: UInt32) {
        buf.append(contentsOf: String(value).utf8)
    }

    public func writeUint64(_ value: UInt64) {
        buf.append(0x22)
        buf.append(contentsOf: String(value).utf8)
        buf.append(0x22)
    }

    public func writeFloat32(_ value: Float) {
        if value.isNaN || value.isInfinite { fatalError("float32: NaN/Infinity not valid JSON") }
        buf.append(contentsOf: String(value).utf8)
    }

    public func writeFloat64(_ value: Double) {
        if value.isNaN || value.isInfinite { fatalError("float64: NaN/Infinity not valid JSON") }
        buf.append(contentsOf: String(value).utf8)
    }

    public func writeNull() {
        buf.append(contentsOf: "null".utf8)
    }

    public func writeBytes(_ value: Data) {
        buf.append(0x22)
        buf.append(contentsOf: value.base64EncodedString().utf8)
        buf.append(0x22)
    }

    public func writeEnum(_ value: String) {
        buf.append(0x22)
        escape(value)
        buf.append(0x22)
    }

    public func beginObject() {
        buf.append(0x7B)
        firstItem.append(true)
    }

    public func writeField(_ name: String) {
        let top = firstItem.count - 1
        if !firstItem[top] { buf.append(0x2C) }
        firstItem[top] = false
        buf.append(0x22)
        escape(name)
        buf.append(0x3A)
    }

    public func endObject() {
        firstItem.removeLast()
        buf.append(0x7D)
    }

    public func beginArray() {
        buf.append(0x5B)
        firstItem.append(true)
    }

    public func nextElement() {
        let top = firstItem.count - 1
        if !firstItem[top] { buf.append(0x2C) }
        firstItem[top] = false
    }

    public func endArray() {
        firstItem.removeLast()
        buf.append(0x5D)
    }

    public func toBytes() -> Data {
        return Data(buf)
    }
}
