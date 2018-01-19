//: Playground - noun: a place where people can play

import UIKit

class Handler {
    
    func save(string: String, minChars: Int = 0) {
        guard string.count >= minChars else {
            print(string + " NOT SAVED")
            return
        }
        
        // Save string in the Cloud
        print(string + " SAVED")
    }
}

// MARK: - Use

func saveStringInHandler(handler: Handler, string: String) {
    handler.save(string: string)
}

let handler = Handler()
let string = "12345"
saveStringInHandler(handler: handler, string: string)

handler.save(string: string, minChars: 6)
