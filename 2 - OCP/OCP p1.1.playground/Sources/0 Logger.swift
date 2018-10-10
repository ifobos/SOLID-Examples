import Foundation

public class Logger {
    
    public init(){}
    
    public func printData(cars:[Car]) {
        cars.forEach { car in
            print(car.printDetails())
        }
    }
}
