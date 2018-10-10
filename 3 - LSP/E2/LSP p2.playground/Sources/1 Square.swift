import Foundation

public class Square: Rectangle {
        
    override public var width: Float {
        didSet {
            length = width
        }
    }
}
