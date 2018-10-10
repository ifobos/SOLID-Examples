import Foundation

public class SuperButton: SuperProtocol {
    
    public init(){}
    
    public func didTap() {
        // send tap action
        print("SuperButton didTap")
    }
    
    public func didDoubleTap() {
        // send double tap action
        print("SuperButton didDoubleTap")
    }
    
    public func didLongPress() {
        // send long press action
        print("SuperButton didLongPress")
    }
}
