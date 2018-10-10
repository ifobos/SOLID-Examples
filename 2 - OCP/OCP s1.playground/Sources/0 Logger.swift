import Foundation

public protocol Printable {
    func printDetails() -> String
}

public class Logger {
    
    public init (){}
    
    public func printData( printables: [Printable]) {
        printables.forEach { printable in
            print(printable.printDetails())
        }
    }
}
