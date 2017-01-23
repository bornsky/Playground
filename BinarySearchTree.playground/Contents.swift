
import Foundation

// BST BinarySearchTree 
// Stores information in a hierarchy
// Combining keys and pointers to create hierarchies 

// log O(log n)
let numberlist : Array<Int> = [8, 2, 10, 9, 11, 1, 7] // Its cool they are UNSORTED, BST will sort them
//let node = AVTree<String>()

public class AVTree<T: Comparable> {
    var key: T?
    var left: AVTree?
    var right: AVTree?
    
    func addNode(key: T) {
        //Check for head Node
        if self.key == nil {
        // If key is nil then return that key
            self.key = key
            return
        }
        // Check the left side of the tree
        if key < self.key! {
            // if the left side is nil add a node
            if self.left != nil {
                left?.addNode(key: key)
            } else {
                // Create a left Child
                let leftChild : AVTree = AVTree()
                leftChild.key = key
                self.left = leftChild
            }
            // Check the right side of the tree
            if key > self.key! {
                if self.right != nil {
                    right?.addNode(key: key)
                } else {
                    // Create a right node
                    let rightChild = AVTree()
                    rightChild.key = key
                    self.right = rightChild
                }
            }
        }
    }
}

var root = AVTree<Int>()

for number in numberlist {
    root.addNode(key: number)
}
/*************************************************************************************************
Height means in mathamathic form "non-existent leaves"
/*******************************************************************************************************************
*/*/

let balanceList: Array<Int> = [23,26,29]

func getNodeHeight(aNode: AVTree<T>?) -> Int {
    
    if aNode.key == nil {
        return -1
    } else {
        return 
    }
}

//Calculate Node height
func setNodeHeight() -> Bool { //Generics of String to get rid of the 3.0 errors
    let node = AVTree<String>()
    if node.key == nil {
        print("no key provided")
        return false
    }
    var nodeHeight: Int = 0
    nodeHeight = max(getNodeHeight(aNode: node.left), (getNodeHeight(aNode:node.right))) + 1
    node.right  ////Don't know where this is must be a bug
        return true
}

var rootVal: Int!
var leafVal: Int!

rootVal = abs((0) - (-1)) //equals 1 balanced
leafVal = abs((-1) - (-1)) // equals 0 balanced

// Check is Tree is balance
func isTreeBalance() -> Bool {
    let node = AVTree<Int>()
    if node.left == nil {
        print("no key provided")
        return false
    }
    
    // Use absolute value to calculate right/left imbalance
//    if abs(getNodeHeight(aNode: node.left) - getNodeHeight(aNode: node.right)) <= 1) {
//        return true
//    } else {
//        return false
//    }
}

// ************************* Rotating a Tree ************************ \\\































