import Foundation

public class Person {
    
    public let name: String
    public let surname: String
    public let email: Email
    
    public init(name: String, surname: String, email: String) {
        self.name = name
        self.surname = surname
        self.email = Email(address: email)
    }
}
