//: Playground - noun: a place where people can play

import UIKit

class Handler {
    
    func save(string: String) {
        // Save string in the Cloud
        print(string + " SAVED")
    }
}

class FilteredHandler: Handler {
    
    override func save(string: String) {
        guard string.count > 5 else {
            print(string + " NOT SAVED")
            return
        }
        super.save(string: string)
    }
}

// MARK: - Use

func saveStringInHandler(handler: Handler, string: String) {
    handler.save(string: string)
}

let handler = Handler()
let string = "12345"
saveStringInHandler(handler: handler, string: string)

let filteredHandler = FilteredHandler()
saveStringInHandler(handler: filteredHandler, string: string)


