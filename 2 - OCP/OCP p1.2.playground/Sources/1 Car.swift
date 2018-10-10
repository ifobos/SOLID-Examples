import Foundation

public class Car {
    let name: String
    let color: String
    
    public init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func printDetails() -> String {
        return "I'm \(name) and my color is \(color)"
    }
}
