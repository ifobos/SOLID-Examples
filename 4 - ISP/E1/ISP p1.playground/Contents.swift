//: Playground - noun: a place where people can play

import UIKit


protocol GestureProtocol {
    func didTap()
    func didDoubleTap()
    func didLongPress()
}

class SuperButton: GestureProtocol {
    func didTap() {
        // send tap action
        print("SuperButton didTap")
    }
    
    func didDoubleTap() {
        // send double tap action
        print("SuperButton didDoubleTap")
    }
    
    func didLongPress() {
        // send long press action
        print("SuperButton didLongPress")
    }
}


class PoorButton: GestureProtocol {
    func didTap() {
        // send tap action
        print("PoorButton didTap")
    }
    
    func didDoubleTap() { }
    
    func didLongPress() { }
}

// MARK: - Use

let superButton = SuperButton()
superButton.didTap()
superButton.didDoubleTap()
superButton.didLongPress()

let poorButton = PoorButton()
poorButton.didTap()
poorButton.didDoubleTap()
poorButton.didLongPress()

