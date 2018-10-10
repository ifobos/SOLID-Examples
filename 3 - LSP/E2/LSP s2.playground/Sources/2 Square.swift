import Foundation

public class Square: Polygon {
    
    private var side: Float
    
    public init(side: Float) {
        self.side = side
    }
    
    public var area: Float {
        return pow(side, 2)
    }
    
    public func duplicateArea() {
        // A = L^2
        // 2A = L'^2
        // L' = ?
        // (2A)^(1/2) = (L'^2)^(1/2)
        // (2A)^(1/2) = L'
        // (2(L^2))^(1/2) = L'
        // (2^(1/2))((L^2)^(1/2)) = L'
        // (2^(1/2)) L = L'
        side = side * pow(2, 0.5)
    }
}
