//: Playground - noun: a place where people can play

import UIKit
import XCTest

protocol Playable {
    var title: String { get }
    var url: String { get }
    var duration: Int { get }
}

class Video: Playable {
    var title: String = "My Video"
    var description: String = "This is a beautiful video"
    var author: String = "Marco Santarossa"
    var url: String = "https://marcosantadev.com/my_video"
    var duration: Int = 60
    var created: Date = Date()
    var update: Date = Date()
}

class Player {
    func play(item: Playable) {
        print("load the content at \(item.url)")
        print("add \(item.title) to the player UI title")
        print("update the player scrubber with \(item.duration)")
    }
}

// MARK: - Use

let player = Player()
let video = Video()
player.play(item: video)

// MARK: - Test

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
    print("Mock.isTitleRead: \(mock.isTitleRead) ")
    XCTAssertTrue(mock.isTitleRead)
}

test_Play_IsTitleRead()

