import Foundation


// INSERTION SORT
// Rank items by comparing each key in the list

var numbersList = [8, 2, 10, 9, 11, 1 ,7]
func insertionsort() {
    var key : Int
    var y : Int
    
    for items in 0...numbersList.count {
        key = numbersList[items]
        y = items
        while y > -1 {
            if key < numbersList[y] {
                numbersList.remove(at: y + 1)
                numbersList.insert(key, at: y)
            }
        }
    }
}

func insertionSort<T>(array: [T], isOrderedBefore: (T, T) ->  Bool) -> [T] {
    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}
let list = [2,3,5,6,7,8,8,3,3,2,4,6,6]

insertionSort(array: list, isOrderedBefore: >)



