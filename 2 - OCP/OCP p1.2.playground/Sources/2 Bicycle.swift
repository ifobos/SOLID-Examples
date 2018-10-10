import Foundation

public class Bicycle {
    let type: String
    
    public init(type: String) {
        self.type = type
    }
    
    func printDetails() -> String {
        return "I'm a \(type)"
    }
}
