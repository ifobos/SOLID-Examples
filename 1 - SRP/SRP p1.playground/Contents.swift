//: Playground - noun: a place where people can play

import UIKit

class Handler {
    
    func handle() {
        let data = requestDataToAPI()
        let array = parse(data: data)
        saveToDB(array: array)
    }
    
    private func requestDataToAPI() -> Data {
        // send API request and wait the response
        return Data()
    }
    
    private func parse(data: Data) -> [String] {
        // parse the data and create the array
        return []
    }
    
    private func saveToDB(array: [String]) {
        // save the array in a database (CoreData/Realm/...)
    }
}

// MARK: - Use

let handler = Handler()
handler.handle()
