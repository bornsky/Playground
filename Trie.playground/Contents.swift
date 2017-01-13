//: Playground - noun: a place where people can play

import Foundation


// Tries are dictionaries

public class TrieNode {
    
    var key: String?
    var children: [TrieNode]?
    var isFinal: Bool
    var level: Int
    
    init() {
        self.children = [TrieNode]()
        self.isFinal = false
        self.level = 0
    }
}

public class Trie {
    private var root: TrieNode!
    init() {
        root = TrieNode()
    }
    
    func addword(keyword: NSString) {
        
        if (keyword.length == 0) {
            return
        }
        var current: TrieNode = root
        let searchKey : String?
        
        while(keyword.length) != current.level {
            var childToUse: TrieNode!
            let searchKey = keyword.substring(to: current.level + 1)
            
            for child in current.children! {
                if child.key == searchKey {
                    childToUse = child
                    break
                }
            }
            
            if childToUse == nil {
                childToUse = TrieNode()
                childToUse.key = searchKey
                childToUse.level = current.level + 1
                current.children?.append(childToUse)
            }
            
            current = childToUse
        }
        
        if keyword.length == current.level {
            current.isFinal = true
            print("end of world reached!")
            return
        }
    }
}
