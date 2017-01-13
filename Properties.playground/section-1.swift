// Playground - noun: a place where people can play

import UIKit
import Darwin

var str = "Hello, playground"

let a = ["A","B","C","D","E","F"]
var b = a

b.append("G")

a[5]
print(a)

// Computed Properties
// Getters and setters to get and set properties
class Goals {
    var time : Double = 0.0
    var speed : Double = 0.0
    var weight : Double = 0.0
    var distance : Double {
        get {
            return speed / time
        }
        set(newdistance) {
            
        }
    }
}

var goal = Goals()
goal.speed = 1.0

goal.time = 10.4
print(goal.distance)

// Property Observers
// Willset: just before the valued is stored
// Didset is called immediately after the new value is stored


class Stepcounter {
    var totalSteps : Int = 0 {
        willSet(newTotalSteps) {
           print("Number of steps I take \(newTotalSteps)")
        }
        didSet(oldTotalSteps) {
            if totalSteps > oldTotalSteps {
                print("Old numbers of steps I take\(totalSteps - oldTotalSteps)")
            }
        }
        
    }
    
}

let stepcounter = Stepcounter()

stepcounter.totalSteps = 108

stepcounter.totalSteps = 403


func switchItUp(_ number: Int) -> String {
    
    return ["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine"][number]
    
}

switchItUp(9)
