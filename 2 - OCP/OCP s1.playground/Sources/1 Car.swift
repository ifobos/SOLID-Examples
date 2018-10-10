import Foundation

public class Car: Printable {
    let name: String
    let color: String
    
    public init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    public func printDetails() -> String {
        return "I'm \(name) and my color is \(color)"
    }
}
