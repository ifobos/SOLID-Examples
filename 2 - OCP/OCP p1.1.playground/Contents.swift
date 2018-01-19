//: Playground - noun: a place where people can play

import UIKit

class Logger {
    
    func printData(cars:[Car]) {
        cars.forEach { car in
            print(car.printDetails())
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

// MARK: - Use

let cars = [
    Car(name: "Batmobile", color: "Black"),
    Car(name: "SuperCar", color: "Gold"),
    Car(name: "FamilyCar", color: "Grey")
]

let logger = Logger()
logger.printData(cars: cars)

