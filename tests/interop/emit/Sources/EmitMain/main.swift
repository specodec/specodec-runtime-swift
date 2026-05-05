import Foundation
import Specodec

let vecDir = ProcessInfo.processInfo.environment["VEC_DIR"] ?? ""
let outDir = ProcessInfo.processInfo.environment["OUT_DIR"] ?? ""

do {
    try FileManager.default.createDirectory(atPath: outDir, withIntermediateDirectories: true)
    try FileManager.default.createDirectory(atPath: outDir + "/scalars", withIntermediateDirectories: true)
} catch {
    print("FAIL setup: \(error)")
    exit(1)
}

var passed = 0
var failed = 0

do {
    let (p, f) = runScalars(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypes(vecDir, outDir)
    passed += p
    failed += f
}

print("emit-swift: \(passed) passed, \(failed) failed")
if failed > 0 { exit(1) }
