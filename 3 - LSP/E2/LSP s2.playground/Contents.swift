//: Playground - noun: a place where people can play

import UIKit

protocol Polygon {
    var area: Float { get }
    func duplicateArea()
}

class Rectangle: Polygon {
    
    private var width: Float
    private var length: Float
    
    init(width: Float, length: Float) {
        self.width = width
        self.length = length
    }
    
    var area: Float {
        return width * length
    }
    
    func duplicateArea() {
        width *= 2
    }
    
}

class Square: Polygon {
    
    private var side: Float
    
    init(side: Float) {
        self.side = side
    }
    
    var area: Float {
        return pow(side, 2)
    }
    
    func duplicateArea() {
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


// MARK: - Use

func duplicateArea(of polygon: Polygon) {
    print("Old area: \(polygon.area)")
    polygon.duplicateArea()
    print("New area: \(polygon.area)")
    
}

let rectangle = Rectangle(width: 2, length: 5)
duplicateArea(of: rectangle)

let square = Square(side: 2)
duplicateArea(of: square)
