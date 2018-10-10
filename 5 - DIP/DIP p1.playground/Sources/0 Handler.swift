import Foundation

open class Handler {
    
    let fileManager = FilesystemManager()
    
    public init(){}
    
    public func handle(string: String) {
        print("HANDLING " + string)
        fileManager.save(string: string)
    }
}
