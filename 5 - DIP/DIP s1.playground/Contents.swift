//: Playground - noun: a place where people can play

import UIKit
import XCTest

print("\n=======================================================\n")
print("Handler with FilesystemManager:\n")
let filesystemManager = FilesystemManager()
let handlerA = Handler(storage: filesystemManager)
handlerA.handle(string: "qwerty")

print("\n=======================================================\n")
print("Handler with DatabaseManager:\n")
let databaseManager = DatabaseManager()
let handlerB = Handler(storage: databaseManager)
handlerB.handle(string: "asdf")


// MARK: - Test
print("\n=======================================================\n")
print("Test:\n")

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


