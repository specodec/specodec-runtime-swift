// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "specodec-swift",
    products: [
        .library(name: "Specodec", targets: ["Specodec"]),
    ],
    targets: [
        .target(name: "Specodec", path: "Sources/Specodec"),
    ]
)
