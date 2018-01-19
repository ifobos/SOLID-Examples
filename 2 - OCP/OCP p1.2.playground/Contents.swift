//: Playground - noun: a place where people can play

import UIKit

class Logger {
    
    func printData(cars: [Car], bicycles: [Bicycle]) {
        cars.forEach { car in
            print(car.printDetails())
        }
        bicycles.forEach { bicycles in
            print(bicycles.printDetails())
        }
    }
}

class Car {
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

class Bicycle {
    let type: String
    
    init(type: String) {
        self.type = type
    }
    
    func printDetails() -> String {
        return "I'm a \(type)"
    }
}

// MARK: - Use

let cars = [
    Car(name: "Batmobile", color: "Black"),
    Car(name: "SuperCar", color: "Gold"),
    Car(name: "FamilyCar", color: "Grey")
]

let bicycles = [
    Bicycle(type: "BMX"),
    Bicycle(type: "Tandem")
]

let logger = Logger()
logger.printData(cars: cars, bicycles: bicycles)

