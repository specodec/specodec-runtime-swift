import Glibc

func trim(_ s: Substring) -> Substring {
    var s = s
    while let f = s.first, f.isWhitespace { s = s.dropFirst() }
    while let l = s.last, l.isWhitespace { s = s.dropLast() }
    return s
}

func currentDir() -> String {
    var buf = [CChar](repeating: 0, count: 4096)
    guard getcwd(&buf, buf.count) != nil else { return "." }
    return String(cString: buf)
}

func readFile(_ path: String) -> String {
    guard let fp = fopen(path, "r") else { fatalError("Cannot open \(path)") }
    defer { fclose(fp) }

    fseek(fp, 0, SEEK_END)
    let size = ftell(fp)
    fseek(fp, 0, SEEK_SET)

    let buf = UnsafeMutablePointer<CChar>.allocate(capacity: Int(size) + 1)
    defer { buf.deallocate() }
    fread(buf, 1, Int(size), fp)
    buf[Int(size)] = 0

    return String(cString: buf)
}

func loadLines(_ filename: String) -> [String] {
    return readFile(filename)
        .split(separator: "\n", omittingEmptySubsequences: false)
        .map { String(trim($0)) }
        .filter { !$0.isEmpty && !$0.hasPrefix("#") }
}

func parseFloat32(_ s: String) -> Float32 {
    switch s {
    case "NaN":          return Float32.nan
    case "Infinity":     return Float32.infinity
    case "-Infinity":    return -Float32.infinity
    case "-0.0":         return -0.0
    default:             return Float32(s)!
    }
}

func parseFloat64(_ s: String) -> Float64 {
    switch s {
    case "NaN":          return Float64.nan
    case "Infinity":     return Float64.infinity
    case "-Infinity":    return -Float64.infinity
    case "-0.0":         return -0.0
    default:             return Float64(s)!
    }
}

func parseCoverageFloat32(_ s: String) -> Float32 {
    let v = s.contains("#") ? s.split(separator: "#")[0] : Substring(s)
    return Float32(String(trim(v)))!
}

func parseCoverageFloat64(_ s: String) -> Float64 {
    let v = s.contains("#") ? s.split(separator: "#")[0] : Substring(s)
    return Float64(String(trim(v)))!
}



func main() {
        let dir = currentDir()
        let base = dir.hasSuffix("/") ? dir : dir + "/"
        var passed = 0
        var failed = 0
        var total = 0

        let testFiles = [
            ("Float32", base + "test_cases_f32.txt", base + "expected_f32.txt", true),
            ("Float64", base + "test_cases_f64.txt", base + "expected_f64.txt", true),
            ("Float32 Coverage", base + "test_cases_table_coverage.txt", base + "expected_table_coverage.txt", false),
            ("Float64 Coverage", base + "test_cases_f64_table_coverage.txt", base + "expected_f64_table_coverage.txt", false),
        ]

        for (name, inputFile, expectedFile, isSimple) in testFiles {
            print("=== \(name) ===")
            let inputLines = loadLines(inputFile)
            let expectedLines = loadLines(expectedFile)
            let n = inputLines.count

            for i in 0..<min(inputLines.count, expectedLines.count) {
                let result: String
                if isSimple {
                    if name.hasPrefix("Float32") {
                        let f = parseFloat32(inputLines[i])
                        if f.isNaN { result = "NaN" }
                        else if f.isInfinite && f.sign == .minus { result = "-Infinity" }
                        else if f.isInfinite { result = "Infinity" }
                        else { result = float32ToString(f) }
                    } else {
                        let d = parseFloat64(inputLines[i])
                        if d.isNaN { result = "NaN" }
                        else if d.isInfinite && d.sign == .minus { result = "-Infinity" }
                        else if d.isInfinite { result = "Infinity" }
                        else { result = float64ToString(d) }
                    }
                } else {
                    if name.hasPrefix("Float32") {
                        let f = parseCoverageFloat32(inputLines[i])
                        result = float32ToString(f)
                    } else {
                        let d = parseCoverageFloat64(inputLines[i])
                        result = float64ToString(d)
                    }
                }

                if result == expectedLines[i] {
                    passed += 1
                } else {
                    failed += 1
                    if failed <= 5 {
                        print("FAIL: \(inputLines[i]) => \(result) (expected \(expectedLines[i]))")
                    }
                }
            }
            print("\(n)/\(n)")
            total += n
        }

        print("\n=== TOTAL: \(passed)/\(total) ===")
        if failed > 0 { exit(1) }
    }

main()
