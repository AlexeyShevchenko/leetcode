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
            var queue: [Int] = []
            
            func dfs(_ node: TreeNode?) {
                guard let node = node else { return }
                dfs(node.left)
                queue.append(node.val)
                dfs(node.right)
            }
            
            dfs(root)
            
            if queue.count == 0 {
                return true
            }
            
            var prev = queue[0]
            
            for i in 1 ..< queue.count {
                let current = queue[i]
                if prev < current {
                    prev = current
                    continue
                } else {
                    return false
                }
            }
            
            return true
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
