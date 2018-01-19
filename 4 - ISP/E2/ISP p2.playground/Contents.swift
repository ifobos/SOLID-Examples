//: Playground - noun: a place where people can play

import UIKit

class Video {
    var title: String = "My Video"
    var description: String = "This is a beautiful video"
    var author: String = "Marco Santarossa"
    var url: String = "https://marcosantadev.com/my_video"
    var duration: Int = 60
    var created: Date = Date()
    var update: Date = Date()
}

class Player {
    func play(video: Video) {
        print("load the content at \(video.url)")
        print("add \(video.title) to the player UI title")
        print("update the player scrubber with \(video.duration)")
    }
}

// MARK: - Use

let player = Player()
let video = Video()
player.play(video: video)
