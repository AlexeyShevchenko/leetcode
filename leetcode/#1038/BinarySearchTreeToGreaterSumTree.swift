//
//  BinarySearchTreeToGreaterSumTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.11.2023.
//

import Foundation

class BinarySearchTreeToGreaterSumTree {
    class Solution {
        var preSum = 0
        
        func bstToGst(_ root: TreeNode?) -> TreeNode? {
            if let right = root?.right {
                _ = bstToGst(right)
            }
            
            preSum += root?.val ?? 0
            root?.val = preSum
            
            if let left = root?.left {
                _ = bstToGst(left)
            }
            
            return root
        }
    }
}
