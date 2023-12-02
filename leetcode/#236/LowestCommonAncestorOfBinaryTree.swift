//
//  LowestCommonAncestorOfBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.12.2023.
//

import Foundation

class LowestCommonAncestorOfBinaryTree {
    class Solution {
        private var commonAncestor: TreeNode? = nil
        
        func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
            _ = traversNode(root, p, q)
            return commonAncestor
        }
        
        private func traversNode(
            _ node: TreeNode?,
            _ p: TreeNode?,
            _ q: TreeNode?
        ) -> Bool {
            guard let node = node else { return false }
            let left = traversNode(node.left, p, q) ? 1 : 0
            let right = traversNode(node.right, p, q) ? 1 : 0
            let mid = (node === p || node === q) ? 1 : 0
            
            if (left + right + mid) >= 2 {
                commonAncestor = node
            }
            
            return (left + right + mid) > 0
        }
    }
}
