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


