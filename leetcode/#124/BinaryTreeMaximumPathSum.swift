//
//  BinaryTreeMaximumPathSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.12.2023.
//

import Foundation

class BinaryTreeMaximumPathSum {
    class Solution {
        private var maxSum: Int = .min
        
        func maxPathSum(_ root: TreeNode?) -> Int {
            _ = getSumFromTree(root)
            return maxSum
        }
        
        private func getSumFromTree(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            let leftPathSum = max(getSumFromTree(node.left), 0)
            let rightPathSum = max(getSumFromTree(node.right), 0)
            maxSum = max(maxSum, leftPathSum + rightPathSum + node.val)
            
            return max(leftPathSum + node.val, rightPathSum + node.val)
        }
    }
}
