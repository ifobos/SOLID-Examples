import Foundation

public class Handler {
    
    public init() {
    }
    
    public func handle() {
        let data = requestDataToAPI()
        let array = parse(data: data)
        saveToDB(array: array)
    }
    
    private func requestDataToAPI() -> Data {
        // send API request and wait the response
        return Data()
    }
    
    private func parse(data: Data) -> [String] {
        // parse the data and create the array
        return ["string 1", "string 2"]
    }
    
    private func saveToDB(array: [String]) {
        // save the array in a database (CoreData/Realm/...)
        print("Data Saved: \(array)")
    }
}
