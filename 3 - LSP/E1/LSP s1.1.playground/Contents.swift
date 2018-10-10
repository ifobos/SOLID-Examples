//: Playground - noun: a place where people can play

import UIKit

func saveStringInHandler(handler: Handler, string: String) {
    handler.save(string: string)
}

let handler = Handler()
let string = "12345"
saveStringInHandler(handler: handler, string: string)

handler.save(string: string, minChars: 6)
