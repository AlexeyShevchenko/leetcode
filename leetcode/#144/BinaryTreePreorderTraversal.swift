//
//  BinaryTreePreorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.11.2023.
//

import Foundation

class BinaryTreePreorderTraversal {
    class Solution {
        func preorderTraversal(_ root: TreeNode?) -> [Int] {
            var res: [Int] = []
            dfs(root, &res)
            return res
        }
        
        private func dfs(_ node: TreeNode?, _ array: inout [Int]) {
            guard let node = node else { return }
            array.append(node.val)
            dfs(node.left, &array)
            dfs(node.right, &array)
        }
    }
}
