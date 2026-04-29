import Foundation

public struct SpecCodec<T> {
    public let encodeJson: (T) -> Data
    public let encodeMsgPack: (T) -> Data
    public let decode: (any SpecReader) throws -> T

    public init(encodeJson: @escaping (T) -> Data, encodeMsgPack: @escaping (T) -> Data, decode: @escaping (any SpecReader) throws -> T) {
        self.encodeJson = encodeJson
        self.encodeMsgPack = encodeMsgPack
        self.decode = decode
    }
}

public func dispatch<T>(codec: SpecCodec<T>, body: Data, contentType: String) throws -> T {
    if contentType.contains("msgpack") {
        return try codec.decode(MsgPackReader(body))
    }
    return try codec.decode(JsonReader(body))
}

public func respond<T>(codec: SpecCodec<T>, obj: T, accept: String) -> Data {
    if accept.contains("msgpack") {
        return codec.encodeMsgPack(obj)
    }
    return codec.encodeJson(obj)
}
