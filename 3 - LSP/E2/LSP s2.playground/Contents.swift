//: Playground - noun: a place where people can play

import Foundation

func duplicateArea(of polygon: Polygon) {
    print("\n\(type(of: polygon))")
    print("Old area: \(polygon.area)")
    polygon.duplicateArea()
    print("New area: \(polygon.area)")
}

let rectangle = Rectangle(width: 2, length: 5)
duplicateArea(of: rectangle)

let square = Square(side: 2)
duplicateArea(of: square)
