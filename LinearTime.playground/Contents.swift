//: Playground - noun: a place where people can play

import Foundation

// Linear Time takes O(n)

let numberList: Array<Int> = [2,3,4,5,6,7,8,9]

// Brute Force Approach
func LinearSearch(key: Int) {
    for n in numberList {
        if (n == key) {
            let _ = "value \(key) found"
            break
        }
    }
}

