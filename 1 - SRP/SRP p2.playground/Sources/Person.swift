import Foundation

public class Person {
    
    public let name: String
    public let surname: String
    public let email: String
    
    public init(name: String, surname: String, email: String) {
        self.name = name
        self.surname = surname
        
        if Person.isValid(emailAddress: email) {
             self.email = email
        } else {
            self.email = "Not valid address."
        }
    }
    
    private static func isValid(emailAddress: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddress as NSString
            let results = regex.matches(in: emailAddress, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0 {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
}
