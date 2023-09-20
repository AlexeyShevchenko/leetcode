//
//  MaximumDepthOfBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import Foundation

class MaximumDepthOfBinaryTree {
    class Solution {
        func maxDepth(_ root: TreeNode?) -> Int {
            if root == nil { return 0 }
            let maxLeft = maxDepth(root?.left)
            let maxRight = maxDepth(root?.right)
            return max(maxLeft, maxRight) + 1
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
