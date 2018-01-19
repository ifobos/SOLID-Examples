//: Playground - noun: a place where people can play

import UIKit

class Handler {
    
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let dbHandler: DBHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dbHandler: DBHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dbHandler = dbHandler
    }
    
    func handle() {
        let data = apiHandler.requestDataToAPI()
        let array = parseHandler.parse(data: data)
        dbHandler.saveToDB(array: array)
    }
}

class APIHandler {
    
    func requestDataToAPI() -> Data {
        // send API request and wait the response
        return Data()
    }
}

class ParseHandler {
    
    func parse(data: Data) -> [String] {
        // parse the data and create the array
        return []
    }
}

class DBHandler {
    
    func saveToDB(array: [String]) {
        // save the array in a database (CoreData/Realm/...)
    }
}


// MARK: - Use
let apiHandler = APIHandler()
let parseHandler = ParseHandler()
let dbHandler = DBHandler()
let handler = Handler(apiHandler: apiHandler, parseHandler: parseHandler, dbHandler: dbHandler)
handler.handle()
