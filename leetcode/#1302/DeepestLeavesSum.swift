//
//  DeepestLeavesSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.11.2023.
//

import Foundation

class DeepestLeavesSum {
    class Solution {
        func deepestLeavesSum(_ root: TreeNode?) -> Int {
            var res = 0
            guard let root = root else { return res }
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                var currentLevelSum = 0
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    currentLevelSum += node.val
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                queue = currentLevel
                res = currentLevelSum
            }
            
            return res
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
