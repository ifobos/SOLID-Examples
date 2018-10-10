import Foundation

public class Player {
    
    public init(){}
    
    public func play(video: Video) {
        print("load the content at \(video.url)")
        print("add \(video.title) to the player UI title")
        print("update the player scrubber with \(video.duration)")
    }
}
