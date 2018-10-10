//: Playground - noun: a place where people can play

import UIKit

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


