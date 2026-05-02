import Foundation

public func formatFloat32(_ value: Float) -> String {
    return ryu.RyuF32.float32ToString(value)
}

public func formatFloat64(_ value: Double) -> String {
    return ryu.RyuF64.float64ToString(value)
}