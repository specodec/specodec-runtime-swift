// swift-tools-version:5.10
import PackageDescription
let package = Package(
  name: "ryu-test",
  dependencies: [.package(path: "../..")],
  targets: [.executableTarget(name: "ryu-test", dependencies: ["Specodec"], path: ".", sources: ["main.swift"])]
)
