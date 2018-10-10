import Foundation

public class Logger {
    
    public init(){}
    
    public func printData(cars: [Car], bicycles: [Bicycle]) {
        cars.forEach { car in
            print(car.printDetails())
        }
        bicycles.forEach { bicycles in
            print(bicycles.printDetails())
        }
    }
}
