import Foundation

public class FilteredHandler: Handler {
    
    override public func save(string: String) {
        guard string.count > 5 else {
            print(string + " NOT SAVED")
            return
        }
        super.save(string: string)
    }
}
