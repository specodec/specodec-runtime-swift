// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "specodec-runtime-swift",
    platforms: [
        .macOS(.v13),
        .iOS(.v15),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "Specodec", targets: ["Specodec"]),
    ],
    targets: [
        .target(name: "Specodec", path: "Sources/Specodec"),
    ]
)
