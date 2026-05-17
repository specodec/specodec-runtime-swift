// swift-tools-version:5.10
import PackageDescription
let package = Package(
  name: "ryu-test",
  targets: [.executableTarget(name: "ryu-test", path: ".", sources: [
    "main.swift", "test_ryu.swift",
    "RyuF32.swift", "RyuF64.swift", "RyuMath.swift",
    "TablesF32.swift", "TablesF64.swift"
  ])]
)
