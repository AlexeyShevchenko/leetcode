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
            return root == nil ?
                true :
                isBalanced(root?.left) &&
                isBalanced(root?.right) &&
                abs(height(root?.left) - height(root?.right)) < 2
        }

        private func height(_ node: TreeNode?) -> Int {
            return node == nil ?
                -1 :
                max(height(node?.left), height(node?.right)) + 1
        }
    }
}
