
/*
 STACKS: Allocate a fixed block of space in an array
        - PUSH() adds "key" to an collection
        - POP TOP() returns most recently-added "key"
        - count number of items in the stack
        - BOOL isEmpty checks to see if the array is empty
 */

public struct Stack<T> {
    var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func push(item: T) {
        return array.append(item)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
}

var addToStack = Stack(array: [2,4,5,6,7,8])

addToStack.push(item: 3)

print(addToStack)

