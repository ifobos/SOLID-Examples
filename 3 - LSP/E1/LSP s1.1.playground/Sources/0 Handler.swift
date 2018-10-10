import Foundation

public class Handler {
    
    public init(){}
    
    public func save(string: String, minChars: Int = 0) {
        guard string.count >= minChars else {
            print(string + " NOT SAVED")
            return
        }
        
        // Save string in the Cloud
        print(string + " SAVED")
    }
}
