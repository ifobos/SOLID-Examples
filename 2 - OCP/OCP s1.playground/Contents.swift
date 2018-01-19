//: Playground - noun: a place where people can play

import UIKit

protocol Printable {
    func printDetails() -> String
}

class Logger {
    func printData( printables: [Printable]) {
        printables.forEach { printable in
            print(printable.printDetails())
        }
    }
}

class Car: Printable {
    let name: String
    let color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func printDetails() -> String {
        return "I'm \(name) and my color is \(color)"
    }
}

class Bicycle: Printable {
    let type: String
    
    init(type: String) {
        self.type = type
    }
    
    func printDetails() -> String {
        return "I'm a \(type)"
    }
}

// MARK: - Use

let printables: [Printable] = [
    Car(name: "Batmobile", color: "Black"),
    Car(name: "SuperCar", color: "Gold"),
    Car(name: "FamilyCar", color: "Grey"),
    Bicycle(type: "BMX"),
    Bicycle(type: "Tandem")
]

let logger = Logger()
logger.printData(printables: printables)
