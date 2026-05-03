import Specodec
import Foundation

func main() {
    do { try runEmit() } catch { print("Fatal: \(error)"); exit(1) }
}
main()
