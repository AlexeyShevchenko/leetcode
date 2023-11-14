//
//  DiameterOfBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.11.2023.
//

import Foundation

class DiameterOfBinaryTree {
    class Solution {
        func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
            var res = 0
            
            func dfs(_ node: TreeNode?) -> Int {
                guard let node = node else { return 0 }
                let leftDepth = dfs(node.left)
                let rightDepth = dfs(node.right)
                res = max(res, leftDepth + rightDepth)
                return 1 + max(leftDepth, rightDepth)
            }
            
            _ = dfs(root)
            
            return res
        }
    }
}
