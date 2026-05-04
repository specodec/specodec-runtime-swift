// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "emit_swift",
    targets: [
        .executableTarget(
            name: "emit_swift",
            dependencies: ["Specodec"],
            path: "Sources/EmitMain"
        ),
        .target(
            name: "Specodec",
            path: "Sources/Specodec"
        )
    ]
)
