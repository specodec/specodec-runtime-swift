// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "emit_swift",
    dependencies: [
        .package(name: "specodec-swift", path: "/specodec-swift"),
    ],
    targets: [
        .executableTarget(
            name: "run_swift",
            dependencies: [
                .product(name: "Specodec", package: "specodec-swift"),
            ],
            path: "Sources/run_swift"
        ),
    ]
)
