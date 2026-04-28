import Foundation

public class GronReader {
    private let src: String
    private var _pos: Int = 0

    public init(_ data: Data) {
        self.src = String(data: data, encoding: .utf8) ?? ""
    }

    public var pos: Int { _pos }

    public func readString() throws -> String {
        throw SCodecError(code: "unimplemented", message: "GronReader.readString not implemented")
    }

    public func readBool() throws -> Bool {
        throw SCodecError(code: "unimplemented", message: "GronReader.readBool not implemented")
    }

    public func readInt32() throws -> Int32 {
        throw SCodecError(code: "unimplemented", message: "GronReader.readInt32 not implemented")
    }

    public func readInt64() throws -> Int64 {
        throw SCodecError(code: "unimplemented", message: "GronReader.readInt64 not implemented")
    }

    public func readUint32() throws -> UInt32 {
        throw SCodecError(code: "unimplemented", message: "GronReader.readUint32 not implemented")
    }

    public func readUint64() throws -> UInt64 {
        throw SCodecError(code: "unimplemented", message: "GronReader.readUint64 not implemented")
    }

    public func readFloat32() throws -> Float {
        throw SCodecError(code: "unimplemented", message: "GronReader.readFloat32 not implemented")
    }

    public func readFloat64() throws -> Double {
        throw SCodecError(code: "unimplemented", message: "GronReader.readFloat64 not implemented")
    }

    public func readNull() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.readNull not implemented")
    }

    public func readBytes() throws -> Data {
        throw SCodecError(code: "unimplemented", message: "GronReader.readBytes not implemented")
    }

    public func readEnum() throws -> String {
        throw SCodecError(code: "unimplemented", message: "GronReader.readEnum not implemented")
    }

    public func beginObject() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.beginObject not implemented")
    }

    public func hasNextField() throws -> Bool {
        throw SCodecError(code: "unimplemented", message: "GronReader.hasNextField not implemented")
    }

    public func readFieldName() throws -> String {
        throw SCodecError(code: "unimplemented", message: "GronReader.readFieldName not implemented")
    }

    public func endObject() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.endObject not implemented")
    }

    public func beginArray() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.beginArray not implemented")
    }

    public func hasNextElement() throws -> Bool {
        throw SCodecError(code: "unimplemented", message: "GronReader.hasNextElement not implemented")
    }

    public func endArray() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.endArray not implemented")
    }

    public func isNull() throws -> Bool {
        throw SCodecError(code: "unimplemented", message: "GronReader.isNull not implemented")
    }

    public func skip() throws {
        throw SCodecError(code: "unimplemented", message: "GronReader.skip not implemented")
    }
}
