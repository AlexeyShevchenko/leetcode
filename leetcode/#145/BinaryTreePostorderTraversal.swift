//
//  BinaryTreePostorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.11.2023.
//

import Foundation

class BinaryTreePostorderTraversal {
    class Solution {
        func postorderTraversal(_ root: TreeNode?) -> [Int] {
            var res: [Int] = []
            dfs(root, &res)
            
            return res
        }
        
        private func dfs(_ node: TreeNode?, _ array: inout [Int]) {
            guard let node = node else { return }
            dfs(node.left, &array)
            dfs(node.right, &array)
            array.append(node.val)
        }
    }
}
