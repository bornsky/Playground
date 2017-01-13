
import Foundation

/// What we will do is divide the array in half and do 2 different searches
    // First: Get the left half
    // Second: Find the middle one
    // Third: Find the right side 
    // Fourth: Find the middle value of the fourth

// O(log n)
func binarySearch(nums: [Int]) -> Bool {
    
    var floor = -1
    var ceiling = nums.count
    let target = 0
    while floor + 1 < ceiling {
        let distance = ceiling - floor
        let halfDistance = distance / 2
        let guessIndex = floor + halfDistance
        
        let guessValue = nums[guessIndex]
        
        if guessValue == target {
            return true
        }
        
        if guessValue < target {
            ceiling = guessIndex
            
        } else {
            floor = guessIndex
        }
        
    }
    
    return false
}

binarySearch(nums: [1,2])



/// Binary Search
var numbers = [Int]()
let search = 1...100

for i in 1...100 {
    numbers.append(i)
}

func binarySearchForSearchValue(searchvalue: Int, values: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = values.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = rightIndex + leftIndex / 2
        let middleValue = values[middleIndex] //gets the number in the middle
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(values[rightIndex]), \(values[leftIndex])]")
        
        if middleValue == searchvalue {
            return true
        }
        
        if searchvalue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchvalue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearchForSearchValue(searchvalue: 1, values: numbers))



