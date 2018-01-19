//: Playground - noun: a place where people can play

import UIKit

protocol SuperProtocol: PoorProtocol {
    func didDoubleTap()
    func didLongPress()
}

protocol PoorProtocol {
    func didTap()
}

class SuperButton: SuperProtocol {
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

class PoorButton: PoorProtocol {
    func didTap() {
        // send tap action
        print("PoorButton didTap")
    }
}

// MARK: - Use

let superButton = SuperButton()
superButton.didTap()
superButton.didDoubleTap()
superButton.didLongPress()

let poorButton = PoorButton()
poorButton.didTap()
