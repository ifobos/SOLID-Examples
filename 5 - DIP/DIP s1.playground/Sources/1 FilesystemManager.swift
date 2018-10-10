import Foundation

public class FilesystemManager: Storage {
    
    public init(){}
    
    public func save(string: String) {
        print("Open a file")
        print("Save the string \"\(string)\" in this file")
        print("Close the file")
        print(string + " SAVED in FilesystemManager")
    }
}
