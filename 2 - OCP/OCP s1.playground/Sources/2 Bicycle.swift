import Foundation

public class Bicycle: Printable {
    let type: String
    
    public init(type: String) {
        self.type = type
    }
    
    public func printDetails() -> String {
        return "I'm a \(type)"
    }
}
