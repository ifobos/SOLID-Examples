import Foundation

public protocol Storage {
    func save(string: String)
}

public class Handler {
    
    let storage: Storage
    
    public init(storage: Storage) {
        self.storage = storage
    }
    
    public func handle(string: String) {
        print("HANDLING " + string)
        storage.save(string: string)
    }
}
