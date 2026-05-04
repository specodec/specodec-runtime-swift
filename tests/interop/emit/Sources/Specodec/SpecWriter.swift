import Foundation

public protocol SpecWriter: AnyObject {
    func writeString(_ value: String)
    func writeBool(_ value: Bool)
    func writeInt32(_ value: Int32)
    func writeInt64(_ value: Int64)
    func writeUint32(_ value: UInt32)
    func writeUint64(_ value: UInt64)
    func writeFloat32(_ value: Float)
    func writeFloat64(_ value: Double)
    func writeNull()
    func writeBytes(_ value: Data)
    func writeEnum(_ value: String)
    func beginObject(_ fieldCount: Int)
    func writeField(_ name: String)
    func endObject()
    func beginArray(_ elementCount: Int)
    func nextElement()
    func endArray()
    func toBytes() -> Data
}
