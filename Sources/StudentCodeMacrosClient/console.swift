import StudentCodeMacros
import Foundation

@main
struct Console {
    func write(_ string: String) async throws {
        print(string)
    }
    
    func read(_ prompt: String) async throws -> String {
        print("prompt: \(prompt)")
        return "blah"
    }
    
    static func main() async throws {
        print("Running main")
        let console = Console()
        let input = #read("Enter a string: ")
        print("Read value: \(input)")
        #write(input)
        print("Wrote value")
    }
}
