//
//  BinaryTreeLevelOrderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.11.2023.
//

import Foundation

class BinaryTreeLevelOrderTraversal {
    class Solution {
        func levelOrder(_ root: TreeNode?) -> [[Int]] {
            guard let root = root else { return [] }
            var res: [[Int]] = []
            var queue: [TreeNode] = [root]

            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                var levelValues: [Int] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    levelValues.append(node.val)
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                res.append(levelValues)
                queue = currentLevel
            }

            return res
        }
    }
}
