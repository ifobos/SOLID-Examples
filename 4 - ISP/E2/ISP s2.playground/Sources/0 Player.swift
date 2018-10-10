import Foundation

public protocol Playable {
    var title: String { get }
    var url: String { get }
    var duration: Int { get }
}

public class Player {
    
    public init(){}
    
    public func play(item: Playable) {
        print("load the content at \(item.url)")
        print("add \(item.title) to the player UI title")
        print("update the player scrubber with \(item.duration)")
    }
}
