//
//  MaximumDepthOfNaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.11.2023.
//

import Foundation

/**
 * Definition for a Node.
 class Node {
 public var val: Int
 public var children: [Node]
 public init(_ val: Int) {
 self.val = val
 self.children = []
 }
 }
 */

class MaximumDepthOfNaryTree {
    class Solution {
        class Node {
            var val: Int
            var children: [Node]
            init(_ val: Int) {
                self.val = val
                self.children = []
            }
        }
        // [1,null,3,2,4,null,5,6]
        // 1
        // 3,2,4
        // 5,6
        func maxDepth(_ root: Node?) -> Int {
            var depth = 0
            guard let root = root else { return depth }
            
            var queue: [Node] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [Node] = []
                
                depth += 1
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    currentLevel.append(contentsOf: node.children)
                }
                
                queue = currentLevel
            }
            
            return depth
        }
    }
}
