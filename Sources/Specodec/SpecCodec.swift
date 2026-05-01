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
// FormatEntry: a reader/writer factory pair for one format
// ---------------------------------------------------------------------------
public struct FormatEntry {
    public let name: String           // e.g. "json", "msgpack", "gron"
    public let newWriter: () -> any SpecWriter
    public let newReader: (Data) -> any SpecReader

    public init(name: String,
                newWriter: @escaping () -> any SpecWriter,
                newReader: @escaping (Data) -> any SpecReader) {
        self.name = name
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

    public func match(_ format: String) -> FormatEntry {
        for e in entries {
            if format.contains(e.name) { return e }
        }
        return entries[0]
    }
}

// ---------------------------------------------------------------------------
// Default registry
// ---------------------------------------------------------------------------
public let defaultRegistry: FormatRegistry = {
    let r = FormatRegistry()
    r.register(FormatEntry(name: "json",
                           newWriter: { JsonWriter() },
                           newReader: { JsonReader($0) }))
    r.register(FormatEntry(name: "msgpack",
                           newWriter: { MsgPackWriter() },
                           newReader: { MsgPackReader($0) }))
    r.register(FormatEntry(name: "gron",
                           newWriter: { GronWriter() },
                           newReader: { GronReader($0) }))
    return r
}()

// ---------------------------------------------------------------------------
// dispatch / respond
// ---------------------------------------------------------------------------
public func dispatch<T>(codec: SpecCodec<T>, body: Data, format: String,
                        registry: FormatRegistry = defaultRegistry) throws -> T {
    let fmt = registry.match(format)
    return try codec.decode(fmt.newReader(body))
}

public struct RespondResult {
    public let body: Data
    public let name: String   // format name: "json" | "msgpack" | "gron"
}

public func respond<T>(codec: SpecCodec<T>, obj: T, format: String,
                       registry: FormatRegistry = defaultRegistry) -> RespondResult {
    let fmt = registry.match(format)
    let w = fmt.newWriter()
    codec.encode(w, obj)
    return RespondResult(body: w.toBytes(), name: fmt.name)
}
