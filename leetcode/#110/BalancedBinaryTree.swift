//
//  BalancedBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.05.2021.
//

import Foundation

class BalancedBinaryTree {
    class Solution {

        typealias TreeNode = SameTree.TreeNode

        func isBalanced(_ root: TreeNode?) -> Bool {
            if root == nil { return true }
            return isBalanced(root?.left) && isBalanced(root?.right) && abs(height(root?.left) - height(root?.right)) < 2
        }

        private func height(_ node: TreeNode?) -> Int {
            if node == nil { return -1 }
            return 1 + max(height(node?.left), height(node?.right))
        }
    }
}
