//: Playground - noun: a place where people can play

import Foundation

let printables: [Printable] = [
    Car(name: "Batmobile", color: "Black"),
    Car(name: "SuperCar", color: "Gold"),
    Car(name: "FamilyCar", color: "Grey"),
    Bicycle(type: "BMX"),
    Bicycle(type: "Tandem")
]

let logger = Logger()
logger.printData(printables: printables)
