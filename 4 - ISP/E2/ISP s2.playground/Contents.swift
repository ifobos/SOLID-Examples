//: Playground - noun: a place where people can play

import UIKit
import XCTest

let player = Player()
let video = Video()
player.play(item: video)

print("\n=========================================================\n")


// MARK: - Test

print("Test\n")

class MockPlayable: Playable {
    private(set) var isTitleRead = false
    var title: String {
        self.isTitleRead = true
        return "My Video"
    }
    var duration = 60
    var url: String = "https://marcosantadev.com/my_video"
}

func test_Play_IsTitleRead() {
    let mock = MockPlayable()
    let player = Player()
    player.play(item: mock)
    print("\nMock.isTitleRead: \(mock.isTitleRead) ")
    XCTAssertTrue(mock.isTitleRead)
}

test_Play_IsTitleRead()

