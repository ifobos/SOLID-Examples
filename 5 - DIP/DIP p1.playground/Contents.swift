//: Playground - noun: a place where people can play

import UIKit

class Handler {
    
    let fileManager = FilesystemManager()
    
    func handle(string: String) {
        print("HANDLING " + string)
        fileManager.save(string: string)
    }
}

class FilesystemManager {
    
    func save(string: String) {
        // Open a file
        // Save the string in this file
        // Close the file
        print(string + " SAVED")
    }
}

// MARK: - Use

let handler = Handler()
handler.handle(string: "qwerty")
