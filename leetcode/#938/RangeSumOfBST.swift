//
//  RangeSumOfBST.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.11.2023.
//

import Foundation

class RangeSumOfBST {
    class Solution {
        func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
            var res = 0
            guard let root = root else { return res }
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    if node.val >= low, node.val <= high {
                        res += node.val
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
            
            return res
        }
    }
}
