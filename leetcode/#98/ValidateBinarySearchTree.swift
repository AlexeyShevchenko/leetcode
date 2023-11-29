//
//  ValidateBinarySearchTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.11.2023.
//

import Foundation

class ValidateBinarySearchTree {
    class Solution {
        func isValidBST(_ root: TreeNode?) -> Bool {
            guard let root = root else { return true }
            var prev: Int = .min
            var invalid = false
            
            func dfs(_ node: TreeNode?) {
                guard let node = node, !invalid else { return }
                dfs(node.left)
                
                let currentValue = node.val
                if prev < currentValue {
                    prev = currentValue
                } else {
                    invalid = true
                    return
                }
                
                dfs(node.right)
            }
            
            dfs(root)
            
            return !invalid
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
