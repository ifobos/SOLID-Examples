//: Playground - noun: a place where people can play

import UIKit

class Rectangle {
    
    var width: Float = 0
    var length: Float = 0
    
    var area: Float {
        return width * length
    }
    
    func duplicateArea() {
        width *= 2
    }
}

class Square: Rectangle {
    
    override var width: Float {
        didSet {
            length = width
        }
    }
}


// MARK: - Use

func duplicateArea(of rectangle: Rectangle) {
    print("Old area: \(rectangle.area)")
    rectangle.duplicateArea()
    print("New area: \(rectangle.area)")

}

let rectangle = Rectangle()
rectangle.length = 5
rectangle.width = 2

duplicateArea(of: rectangle)

let square = Square()
square.width = 2
duplicateArea(of: square)


