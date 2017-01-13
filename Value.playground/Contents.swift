//: Playground - noun: a place where people can play

import Foundation

func vowelCount(string: String) {
    let maxNumber = value.maxValue([24,5,6,734,2,42,4,5,75])
    print(maxNumber)
    
    word.popular("Dan is the man and Dan has the master plan")
//        print(words)
}
vowelCount(string: "this shits is hardlvu;abewbrau;tbuvb;v;bv;oboqborben")


class MaxValue : NSObject {
    
    func maxValue(_ intergers: [Int]) -> Int {
        
        var biggest = 0
        
        for interger in intergers {
            if biggest < interger {
                biggest = interger
            }
        }
        return biggest
    }
}

class Persons {
    var firstName: String
    var lastName: String
    var shoeSize: Int
    
    init(firstName: String, lastName: String, shoeSize: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.shoeSize = shoeSize
        
    }
}
