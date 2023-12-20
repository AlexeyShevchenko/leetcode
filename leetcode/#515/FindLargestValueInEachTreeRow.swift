//
//  FindLargestValueInEachTreeRow.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 20.12.2023.
//

import Foundation

class FindLargestValueInEachTreeRow {
    class Solution {
        func largestValues(_ root: TreeNode?) -> [Int] {
            var res: [Int] = []
            guard let root = root else { return res }
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                var levelMax: Int = .min
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                    
                    levelMax = max(levelMax, node.val)
                }
                
                res.append(levelMax)
                queue = currentLevel
            }
            
            return res
        }
    }
}
