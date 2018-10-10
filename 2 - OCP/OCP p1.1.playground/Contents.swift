//: Playground - noun: a place where people can play

import Foundation

let cars = [
    Car(name: "Batmobile", color: "Black"),
    Car(name: "SuperCar", color: "Gold"),
    Car(name: "FamilyCar", color: "Grey")
]

let logger = Logger()
logger.printData(cars: cars)
