//
//  PathSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.11.2023.
//

import Foundation

class PathSum {
    class Solution {
        func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
            guard let root = root else { return false }
            
            if root.left == nil,
               root.right == nil,
               targetSum - root.val == 0 {
                return true
            }
            
            return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
        }
    }
}
