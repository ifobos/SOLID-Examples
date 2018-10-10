import Foundation

public class Rectangle {
    
    public init(){}
    
    public var width: Float = 0
    public var length: Float = 0
    
    public var area: Float {
        return width * length
    }
    
    public func duplicateArea() {
        width *= 2
    }
}
