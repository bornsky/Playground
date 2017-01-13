//: Playground - noun: a place where people can play

import UIKit
import Foundation

//  1) Divide the array in half
//  2) Sort the halves
//  3) Merge the 2 sorted ones together making 1 sorted whole

func mergeSort(nums: [Int]) {
    
    if nums.count < 2 {
        return
    }
    
//   1) Divide the list in half
    let medIndex = nums.count / 2
    
//   2) left and right side of the array
    
    let left = nums[medIndex]
    let right = nums[medIndex]
    
    var sortedLeft = mergeSort(nums: [left])
    var sortedRight = mergeSort(nums: [right])
    
//    3) Merge them together
    let sortedNums: [Int]
    
    while sortedLeft.count || sortedRight.count {
    
    }
    
    
}
