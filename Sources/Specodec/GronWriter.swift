import Foundation

public class GronWriter {
    public init() {}

    public func writeString(_ value: String) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeString not implemented")
    }

    public func writeBool(_ value: Bool) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeBool not implemented")
    }

    public func writeInt32(_ value: Int32) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeInt32 not implemented")
    }

    public func writeInt64(_ value: Int64) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeInt64 not implemented")
    }

    public func writeUint32(_ value: UInt32) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeUint32 not implemented")
    }

    public func writeUint64(_ value: UInt64) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeUint64 not implemented")
    }

    public func writeFloat32(_ value: Float) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeFloat32 not implemented")
    }

    public func writeFloat64(_ value: Double) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeFloat64 not implemented")
    }

    public func writeNull() throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeNull not implemented")
    }

    public func writeBytes(_ value: Data) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeBytes not implemented")
    }

    public func beginObject(_ fieldCount: Int) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.beginObject not implemented")
    }

    public func writeField(_ name: String) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.writeField not implemented")
    }

    public func endObject() throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.endObject not implemented")
    }

    public func beginArray(_ elementCount: Int) throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.beginArray not implemented")
    }

    public func nextElement() throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.nextElement not implemented")
    }

    public func endArray() throws {
        throw SCodecError(code: "unimplemented", message: "GronWriter.endArray not implemented")
    }

    public func toBytes() throws -> Data {
        throw SCodecError(code: "unimplemented", message: "GronWriter.toBytes not implemented")
    }
}
