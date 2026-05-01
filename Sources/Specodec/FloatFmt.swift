// fmtFloat32: returns the shortest decimal string that uniquely identifies
// the given Float value and round-trips back to the same Float bits.
//
// Swift's String(Float) uses a shortest-decimal algorithm internally
// (the Swift runtime uses a Grisu/Ryu-like approach).
//
// TODO: if a standalone Ryu implementation is needed (e.g. for exact
// cross-language parity), replace this body with an explicit Ryu f32 port.
func fmtFloat32(_ value: Float) -> String {
    var s = String(value)
    if s.contains(".") && !s.contains("e") && !s.contains("E") {
        while s.hasSuffix("0") { s = String(s.dropLast()) }
        if s.hasSuffix(".") { s = String(s.dropLast()) }
    }
    return s
}
