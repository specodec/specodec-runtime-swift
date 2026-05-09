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

do {
    let (p, f) = runAllTypesScalars(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesOpt(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesPairs(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesMany(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesArrays(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesNests(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesMixed(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesRecursive(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesWide(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesEdge(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesExtra(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesNested(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesNestedDeep(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesEnums(vecDir, outDir)
    passed += p
    failed += f
}

do {
    let (p, f) = runAllTypesUnions(vecDir, outDir)
    passed += p
    failed += f
}

print("emit-swift: \(passed) passed, \(failed) failed")
if failed > 0 { exit(1) }
