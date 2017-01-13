//: Playground - noun: a place where people can play

import Foundation

public indirect enum Binarytree<T> {
    case node(Binarytree<T>, T, Binarytree<T>)
    case empty

public var count: Int {
        switch self {
        case let .node(left, _, right):
            return left.count + 1 + right.count
        case .empty:
            return 0
        }
    }
}

extension Binarytree: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .node(left, value, right):
            return "value \(value), left = [ \(left.description) ], right = [ \(right.description) ]"
        case .empty:
            return ""
        }
    }
}

let node5 = Binarytree.node(.empty, "5", .empty)
