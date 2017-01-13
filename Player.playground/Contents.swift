//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let eachString = str.components(separatedBy: " ")
let j = [Character](str.characters)

var m = 22

min(2, 4)

max(10, m)

var st = str.components(separatedBy: ",")
print(st)
let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let ne = j.map { $0 }
print(ne)

let shortNames = cast.filter { $0.characters.count > 5 }
print(shortNames)

for (i, j) in j.enumerated() {
    print("\(i) \(j)")
}






