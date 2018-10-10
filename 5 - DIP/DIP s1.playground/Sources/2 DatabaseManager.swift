import Foundation

public class DatabaseManager: Storage {
    
    public init(){}
    
    public func save(string: String) {
        print("Connect to the database")
        print("Execute the query to save the string \"\(string)\" in a table")
        print(" Close the connection")
        print(string + " SAVED in DatabaseManager")
    }
}
