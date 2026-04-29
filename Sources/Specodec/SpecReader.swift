import Foundation

public protocol SpecReader: AnyObject {
    func beginObject() throws
    func hasNextField() throws -> Bool
    func readFieldName() throws -> String
    func endObject() throws
    func beginArray() throws
    func hasNextElement() throws -> Bool
    func endArray() throws
    func readString() throws -> String
    func readBool() throws -> Bool
    func readInt32() throws -> Int32
    func readInt64() throws -> Int64
    func readUint32() throws -> UInt32
    func readUint64() throws -> UInt64
    func readFloat32() throws -> Float
    func readFloat64() throws -> Double
    func readNull() throws
    func readBytes() throws -> Data
    func readEnum() throws -> String
    func isNull() throws -> Bool
    func skip() throws
}
