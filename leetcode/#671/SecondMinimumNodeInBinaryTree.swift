//
//  SecondMinimumNodeInBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.11.2023.
//

import Foundation

class SecondMinimumNodeInBinaryTree {
    class Solution {
        func findSecondMinimumValue(_ root: TreeNode?) -> Int {
            guard let root = root else { return -1 }
            var secondMin: Int = .max
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    
                    if node.val != root.val, node.val < secondMin {
                        secondMin = node.val
                    }
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                queue = currentLevel
            }
            
            return secondMin == .max ? -1 : secondMin
        }
    }
}
