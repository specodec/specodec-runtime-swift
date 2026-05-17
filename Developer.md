# Swift Runtime — Developer Reference

> **Emitter**: `/home/ytr/Specodec/typespec-emitter-swift/src/index.ts`

---

## 1. Type Mapping Table

| TypeSpec Type | Swift Type | Notes |
|---|---|---|
| `string` | `String` | |
| `boolean` | `Bool` | |
| `int8` | `Int8` | Explicit sized types |
| `int16` | `Int16` | |
| `int32` | `Int32` | |
| `int64` | `Int64` | |
| `uint8` | `UInt8` | |
| `uint16` | `UInt16` | |
| `uint32` | `UInt32` | |
| `uint64` | `UInt64` | |
| `float32` | `Float` (Float32) | Note: Swift `Float` is 32-bit |
| `float64`, `float`, `decimal` | `Double` | Note: Swift `Double` is 64-bit |
| `bytes` | `Data` | (Foundation) |
| `integer` | `Int32` | |
| Enum | native `enum: Int` | |
| Array `<T>` | `[T]` | |
| Record `<V>` | `[String: V]` | |
| Model | `struct` (or `final class` for self-referencing) | |
| Union | `enum` with associated values | |

---

## 2. Model Representation

Models are Swift **structs** (value types):

```swift
public struct MyModel: Sendable {
    public var name: String
    public var age: Int32
    public var tags: [String]

    public init(name: String = "", age: Int32 = 0, tags: [String] = []) {
        self.name = name
        self.age = age
        self.tags = tags
    }
}
```

All fields are `public var`. Conforms to `Sendable` for concurrency safety. Explicit initializer with default values for zero-initialization in decode.

---

## 3. Optional / Nullable

- Optional fields use `T?` (e.g., `String?`, `Int32?`).
- **Self-referencing detection**: The emitter has an `isSelfReferencing()` check. If a model references itself (directly or indirectly), it switches from `struct` to **`final class`**:
  ```swift
  public final class TreeNode {
      public var value: Int32
      public var left: TreeNode?
      public var right: TreeNode?
  }
  ```
  This is necessary because structs cannot contain `Optional<Self>` in Swift.

---

## 4. Union Representation

Discriminated unions use Swift **enums with associated values**:

```swift
public enum MyUnion: Sendable {
    case variantA(Int32)
    case variantB(String)
    case undefined
}
```

Encode uses `switch` on the enum to emit `_tag` field + variant data. Decode reads `_tag` then constructs the appropriate case.

---

## 5. Enum Representation

Native Swift `enum: Int`:

```swift
public enum Color: Int, Sendable {
    case red = 0
    case green = 1
    case blue = 2
}
```

The raw integer value is used for msgpack encoding; the raw string representation for JSON/gron.

---

## 6. Ryu Implementation

- **Bit extraction**: `f.bitPattern` (native property on `Float`/`Double` in Swift).
- **`umul128`**: Manual 128-bit multiplication using 32-bit halves (same approach as Go):
  - Splits inputs into `aLo`, `aHi`, `bLo`, `bHi`.
  - Computes `ll`, `lh`, `hl`, `hh`, then combines with carry tracking.
  - Uses `&*` (overflow multiplication) and `&+` (overflow addition) operators to avoid runtime traps on overflow.
- **`mulShift64`**: Uses `umul128` twice, combines with carry logic similar to Go.
- **`mulShift32`**: Standard 32-bit split with `&*` and `&+` overflow operators.
- **`multipleOfPowerOf5_32`**: Iterative loop with `pow5 = pow5 &* 5` — note: `pow5` starts at `1` and the loop runs `0..<q` (differs from Go/Rust's `1..<q`).
- **Tables**: `[UInt64]` arrays. f32 tables: `FLOAT_POW5_INV_SPLIT` (57 entries), `FLOAT_POW5_SPLIT` (48 entries). f64 tables: `[[UInt64]]` (two-dimensional).

---

## 7. MsgPack Reader/Writer

**Reader** (`MsgPackReader`):
- Accumulates over `Data` with `pos: Int` cursor.
- Reads via byte-level assembly: `UInt32(bigEndian:)` etc.
- `readFloat32`: `Float(bitPattern: UInt32(bigEndian: ...))`.
- `readFloat64`: `Double(bitPattern: UInt64(bigEndian: ...))`.
- `readInt64`: reads signed 64-bit from raw bytes.
- `containerCount: [Int]` tracks map/array nesting.
- All methods use `throws` / `try`.

**Writer** (`MsgPackWriter`):
- Accumulates into `Data` via `append(_:)`.
- `writeFloat32`: `v.bitPattern.bigEndian` → 4 bytes appended.
- `writeFloat64`: `v.bitPattern.bigEndian` → 8 bytes appended.
- String encoding via `Data(value.utf8)`.

---

## 8. JSON Reader/Writer

**Reader** (`JsonReader`):
- Works on `String` (via `String(data: data, encoding: .utf8)`).
- `parseString`: Handles `\uXXXX` with **surrogate pair support** (same algorithm).
- NaN: `Double.nan`; Infinity: `Double.infinity` / `-Double.infinity`.
- `readInt32`/`readInt64`/`readUint32`/`readUint64`: Uses `Int32(s)`, `Int64(s)`, etc. Supports quoted string encoding.
- `readBytes`: Base64 decode via `Data(base64Encoded: s)`.
- All methods use `throws`.

**Writer** (`JsonWriter`):
- Accumulates into `Data` (byte-level, not string).
- NaN/Infinity: `"NaN"`, `"Infinity"`, `"-Infinity"` (quoted).
- `int64`/`uint64`: quoted decimal strings.
- Escape: character-level matching; `\u00XX` for control characters.
- Uses `formatFloat32`/`formatFloat64` (Ryu) from `FloatFmt.swift`.

---

## 9. Gron Reader/Writer

**Reader** (`GronReader`):
- Parses `path = value;` lines.
- Context stack: `[Ctx]` structs with `prefix`, `type`, `index`.
- `unescape`: handles `\uXXXX` via `UInt32(hex, radix: 16)` → `UnicodeScalar` — **supports surrogate pairs** via `UnicodeScalar`.
- `readInt64`/`readUint64`: unescapes then `Int64(s)` / `UInt64(s)`.
- NaN/Infinity: checks for quoted forms.

**Writer** (`GronWriter`):
- Accumulates `[String]` lines.
- Path starts with `"json"`.
- `int64`/`uint64`: quoted decimal strings.
- NaN/Infinity: quoted strings.
- Uses `formatFloat32`/`formatFloat64`.

---

## 10. State Management

- **Mutable** class-based state (all readers/writers are `class`, not `struct`).
- `SpecReader` protocol requires `AnyObject` conformance (reference type only).
- `SpecWriter` protocol requires `AnyObject` conformance.
- All reader methods are `throws`; writer methods are infallible.
- `SpecCodec<T>` is a struct with `@unchecked Sendable`.

---

## 11. SpecReader / SpecWriter Interfaces

### SpecReader

```swift
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
```

### SpecWriter

```swift
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
```

---

## 12. Emitter Generation Pattern

### Model encode
```swift
public func writeMyModel(_ w: any SpecWriter, _ obj: MyModel) {
    w.beginObject(2)
    w.writeField("name")
    w.writeString(obj.name)
    w.writeField("age")
    w.writeInt32(obj.age)
    w.endObject()
}
```

### Model decode
```swift
public func readMyModel(_ r: any SpecReader) throws -> MyModel {
    try r.beginObject()
    var _name: String = ""
    var _age: Int32 = 0
    while try r.hasNextField() {
        switch try r.readFieldName() {
        case "name": _name = try r.readString()
        case "age": _age = try r.readInt32()
        default: try r.skip()
        }
    }
    try r.endObject()
    return MyModel(name: _name, age: _age)
}
```

All decode functions use `throws` with `try` prefix on every reader call.

---

## 13. Known Quirks / Bugs

- **Ryu f32 uses `decimalLength17` instead of `decimalLength9`**: In `RyuF32.swift`, the output formatting at lines 151 and 177 calls `decimalLength17(v: output)` on the result. Since Ryu f32 produces at most 9-digit output values, this should use `decimalLength9` instead. The `decimalLength17` function will work correctly (it just has more comparison branches), but it's semantically wrong for f32 precision.
- **`multipleOfPowerOf5_32` loop difference**: Swift's implementation starts `pow5` at `1` and loops `0..<q` (executing `q` iterations), whereas other languages start `pow5` at `5` and loop `1..<q` (executing `q-1` iterations). The result is the same (`5^q`) but the Swift version computes one extra multiplication. More critically, note that when `q == 0`, the Swift version still computes `5^0 = 1` (passes the loop 0 times), which is correct but matches a different initialization.
- **`&*` and `&+` overflow operators**: Used extensively to explicitly allow overflow in integer arithmetic without runtime traps.
- **`SpecWriter`/`SpecReader` protocols require `AnyObject`**: Concrete implementations must be classes (reference types), not structs.
- **`@unchecked Sendable`**: Applied to `SpecCodec<T>` and `FormatRegistry` to suppress concurrency warnings — the caller is responsible for thread safety.
- **Gron unescape**: Uses `UnicodeScalar` which correctly handles the full Unicode range.

---

## 14. DevContainer

- **Base image**: `dev:all`
- **Tooling**: Swift via `mise` shims
- **Build**: `swift package resolve` (with `--mount=type=cache,target=/root/.cache/org.swift.swiftpm`), then `swift build --build-tests` (builds both library and tests)
- **Output** (`FROM scratch`): copies `/app/Package.swift` to `/out/Package.swift`
