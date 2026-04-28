// swift-tools-version:5.9
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
