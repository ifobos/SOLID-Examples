//: Playground - noun: a place where people can play

import Foundation

let apiHandler = APIHandler()
let parseHandler = ParseHandler()
let dbHandler = DBHandler()
let handler = Handler(apiHandler: apiHandler, parseHandler: parseHandler, dbHandler: dbHandler)
handler.handle()
