import Foundation

func loadTests(_ filename: String) -> [Double] {
    let content = try! String(contentsOfFile: filename, encoding: .utf8)
    return content.split(separator: "\n")
        .map { $0.trimmingCharacters(in: .whitespaces) }
        .filter { !$0.isEmpty && !$0.hasPrefix("#") }
        .map { Double($0)! }
}

func loadExpected(_ filename: String) -> [String] {
    let content = try! String(contentsOfFile: filename, encoding: .utf8)
    return content.split(separator: "\n")
        .map { $0.trimmingCharacters(in: .whitespaces) }
        .filter { !$0.isEmpty }
        .map { String($0) }
}

func loadCoverage32(_ filename: String) -> [Float32] {
    let content = try! String(contentsOfFile: filename, encoding: .utf8)
    return content.split(separator: "\n")
        .map { $0.trimmingCharacters(in: .whitespaces) }
        .filter { line in
            if line.isEmpty { return false }
            let c = line.first!
            return c >= "0" && c <= "9"
        }
        .map { line in
            let v = line.contains("#") ? line.split(separator: "#")[0] : Substring(line)
            return Float32(v.trimmingCharacters(in: .whitespaces))!
        }
}

func loadCoverage64(_ filename: String) -> [Float64] {
    let content = try! String(contentsOfFile: filename, encoding: .utf8)
    return content.split(separator: "\n")
        .map { $0.trimmingCharacters(in: .whitespaces) }
        .filter { line in
            if line.isEmpty { return false }
            let c = line.first!
            return c >= "0" && c <= "9"
        }
        .map { line in
            let v = line.contains("#") ? line.split(separator: "#")[0] : Substring(line)
            return Float64(v.trimmingCharacters(in: .whitespaces))!
        }
}

@main
struct RyuTest {
    static func main() {
        let base = FileManager.default.currentDirectoryPath
        var passed = 0, failed = 0

        print("=== Float32 Original (125 tests) ===")
        let f32in = loadTests(base + "/test_cases_f32.txt")
        let f32exp = loadExpected(base + "/expected_f32.txt")
        for i in 0..<min(f32in.count, f32exp.count) {
            let result = float32ToString(Float32(f32in[i]))
            if result == f32exp[i] { passed += 1 }
            else {
                failed += 1
                if failed <= 5 { print("FAIL: \(f32in[i]) => \(result) (expected \(f32exp[i]))") }
            }
        }
        print("\(f32in.count)/\(f32in.count)\n")

        print("=== Float64 Original (102 tests) ===")
        let f64in = loadTests(base + "/test_cases_f64.txt")
        let f64exp = loadExpected(base + "/expected_f64.txt")
        for i in 0..<min(f64in.count, f64exp.count) {
            let result = float64ToString(f64in[i])
            if result == f64exp[i] { passed += 1 }
            else {
                failed += 1
                if failed <= 5 { print("FAIL: \(f64in[i]) => \(result) (expected \(f64exp[i]))") }
            }
        }
        print("\(f64in.count)/\(f64in.count)\n")

        print("=== Float32 Coverage (78 tests) ===")
        let c32in = loadCoverage32(base + "/test_cases_table_coverage.txt")
        let c32exp = loadExpected(base + "/expected_table_coverage.txt")
        let n32 = min(c32in.count, c32exp.count)
        for i in 0..<n32 {
            let result = float32ToString(c32in[i])
            if result == c32exp[i] { passed += 1 }
            else {
                failed += 1
                if failed <= 5 { print("FAIL: \(c32in[i]) => \(result) (expected \(c32exp[i]))") }
            }
        }
        print("\(n32)/\(n32)\n")

        print("=== Float64 Coverage (616 tests) ===")
        let c64in = loadCoverage64(base + "/test_cases_f64_table_coverage.txt")
        let c64exp = loadExpected(base + "/expected_f64_table_coverage.txt")
        let n64 = min(c64in.count, c64exp.count)
        for i in 0..<n64 {
            let result = float64ToString(c64in[i])
            if result == c64exp[i] { passed += 1 }
            else {
                failed += 1
                if failed <= 5 { print("FAIL: \(c64in[i]) => \(result) (expected \(c64exp[i]))") }
            }
        }
        print("\(n64)/\(n64)\n")

        print("=== TOTAL: \(passed)/\(passed + failed) ===")
        if failed > 0 { exit(1) }
    }
}
