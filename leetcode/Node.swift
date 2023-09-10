//
//  Node.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.09.2023.
//

import Foundation

public class Node {
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
