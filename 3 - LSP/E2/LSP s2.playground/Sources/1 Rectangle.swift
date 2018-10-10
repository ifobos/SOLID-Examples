import Foundation

public class Rectangle: Polygon {
    
    private var width: Float
    private var length: Float
    
    public init(width: Float, length: Float) {
        self.width = width
        self.length = length
    }
    
    public var area: Float {
        return width * length
    }
    
    public func duplicateArea() {
        width *= 2
    }
    
}
