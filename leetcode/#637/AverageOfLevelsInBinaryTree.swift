//
//  AverageOfLevelsInBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.11.2023.
//

import Foundation

class AverageOfLevelsInBinaryTree {
    class Solution {
        func averageOfLevels(_ root: TreeNode?) -> [Double] {
            var res: [Double] = []
            guard let root = root else { return res }
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var sumOfLevel: Int = 0
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    
                    sumOfLevel += node.val
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                var averageOfLevel: Double = Double(sumOfLevel) / Double(queue.count)
                res.append(averageOfLevel)

                queue = currentLevel
            }

            return res
        }
    }
}
