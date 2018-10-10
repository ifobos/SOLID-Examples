import Foundation

public class PoorButton: GestureProtocol {
    
    public init(){}
    
    public func didTap() {
        // send tap action
        print("PoorButton didTap")
    }
    
    public func didDoubleTap() { }
    
    public func didLongPress() { }
}
