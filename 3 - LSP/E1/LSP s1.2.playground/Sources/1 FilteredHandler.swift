import Foundation

public class FilteredHandler: Handler {
    public func save(string: String, minChars: Int = 0) {
        guard string.count >= minChars else {
            print(string + " NOT SAVED")
            return
        }
        super.save(string: string)
    }
}
