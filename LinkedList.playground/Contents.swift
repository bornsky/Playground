//: Playground - noun: a place where people can play

import Foundation
/*
******************************          2-29-16    *****************************************

Most operations on a linked list are slow. Having a node in a linked list makes it faster
    to find the node in a linked list. They are more flexiable than arrays and have a "Head" and a "Tail"
Singly linked list is faster than doubly linked list because you don't
    have to go through every link to find the one you are looking for

// Why use a linked list?

*** An example of where to use a linked list is when you need a [queue](../Queue/). With an array, removing elements from the front of the queue is slow because it needs to shift down all the other elements in memory. But with a linked list it's just a matter of changing `head` to point to the second element. Much faster. ****

--Cracking the Code
Unlike an array, a linked list does not provide constant time access to a particular "index" within the list. This means that if you'd like to find the Kth element in the list, you will need to iterate through K elements.
The benefit of a linked list is that you can add and remove items from the beginning of the list in constant time. For specific applications, this can be useful.
*/
//Most operations on a linked list have **O(n)** time

public class LinkedListNode<T: Comparable> {
    var value: T
    var next: LinkedListNode<T>?
    weak var previous: LinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T: Comparable> {
    public typealias Node = LinkedList?
    
    fileprivate var head: Node?
    
    public var isEmpty : Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last : Node? {
        if var node = head {
            while case let next? != node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }
    
    public var count : Int {
        if var node = head {
            var c = 1
            if let next = node.next {
                node = next
                c += 1
            }
            return c
        } else {
            return 0
        }
    }
    
    
    public var next: LinkedListNode<Any>?
    var previous: LinkedListNode<Any>?
    var value: T
    
    
    public init(value: T) {
        self.value = value
    }
    
}
    



