import Foundation

public struct SpecCodec<T>: @unchecked Sendable {
    public let encode: (any SpecWriter, T) -> Void
    public let decode: (any SpecReader) throws -> T

    public init(
        encode: @escaping (any SpecWriter, T) -> Void,
        decode: @escaping (any SpecReader) throws -> T
    ) {
        self.encode = encode
        self.decode = decode
    }
}

// ---------------------------------------------------------------------------
// FormatEntry
// ---------------------------------------------------------------------------
public struct FormatEntry {
    public let contentType: String
    public let newWriter: () -> any SpecWriter
    public let newReader: (Data) -> any SpecReader

    public init(contentType: String,
                newWriter: @escaping () -> any SpecWriter,
                newReader: @escaping (Data) -> any SpecReader) {
        self.contentType = contentType
        self.newWriter = newWriter
        self.newReader = newReader
    }
}

// ---------------------------------------------------------------------------
// FormatRegistry
// ---------------------------------------------------------------------------
public class FormatRegistry: @unchecked Sendable {
    private var entries: [FormatEntry] = []

    public init() {}

    @discardableResult
    public func register(_ entry: FormatEntry) -> FormatRegistry {
        entries.append(entry)
        return self
    }

    public func match(_ contentType: String) -> FormatEntry {
        for e in entries {
            let sub = e.contentType.split(separator: "/").last.map(String.init) ?? ""
            if contentType.contains(sub) { return e }
        }
        return entries[0]
    }
}

// ---------------------------------------------------------------------------
// Default registry
// ---------------------------------------------------------------------------
public let defaultRegistry: FormatRegistry = {
    let r = FormatRegistry()
    r.register(FormatEntry(contentType: "application/json",
                           newWriter: { JsonWriter() },
                           newReader: { JsonReader($0) }))
    r.register(FormatEntry(contentType: "application/msgpack",
                           newWriter: { MsgPackWriter() },
                           newReader: { MsgPackReader($0) }))
    r.register(FormatEntry(contentType: "application/gron",
                           newWriter: { GronWriter() },
                           newReader: { GronReader($0) }))
    return r
}()

// ---------------------------------------------------------------------------
// dispatch / respond
// ---------------------------------------------------------------------------
public func dispatch<T>(codec: SpecCodec<T>, body: Data, contentType: String,
                        registry: FormatRegistry = defaultRegistry) throws -> T {
    let fmt = registry.match(contentType)
    return try codec.decode(fmt.newReader(body))
}

public struct RespondResult {
    public let body: Data
    public let contentType: String
}

public func respond<T>(codec: SpecCodec<T>, obj: T, accept: String,
                       registry: FormatRegistry = defaultRegistry) -> RespondResult {
    let fmt = registry.match(accept)
    let w = fmt.newWriter()
    codec.encode(w, obj)
    return RespondResult(body: w.toBytes(), contentType: fmt.contentType)
}
