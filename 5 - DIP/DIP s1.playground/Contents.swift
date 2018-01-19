//: Playground - noun: a place where people can play

import UIKit
import XCTest

protocol Storage {
    func save(string: String)
}

class Handler {
    
    let storage: Storage
    
    init(storage: Storage) {
        self.storage = storage
    }
    
    func handle(string: String) {
        print("HANDLING " + string)
        storage.save(string: string)
    }
}

class FilesystemManager: Storage {
    
    func save(string: String) {
        // Open a file in read-mode
        // Save the string in this file
        // Close the file
        print(string + " SAVED in FilesystemManager")
    }
}

class DatabaseManager: Storage {
    
    func save(string: String) {
        // Connect to the database
        // Execute the query to save the string in a table
        // Close the connection
        print(string + " SAVED in DatabaseManager")
    }
}

// MARK: - Use

let filesystemManager = FilesystemManager()
let handlerA = Handler(storage: filesystemManager)
handlerA.handle(string: "qwerty")

let databaseManager = DatabaseManager()
let handlerB = Handler(storage: databaseManager)
handlerB.handle(string: "asdf")

// MARK: - Test

class MockStorage: Storage {
    
    private(set) var isSavedCalled = false
    
    func save(string: String) {
        isSavedCalled = true
    }
}

func test_Handle_IsSaveCalled() {
    let mockStorage = MockStorage()
    let handler = Handler(storage: mockStorage)
    handler.handle(string: "test")
    print("mockStorage.isSavedCalled: \(mockStorage.isSavedCalled)")
    XCTAssertTrue(mockStorage.isSavedCalled)
}

test_Handle_IsSaveCalled()


