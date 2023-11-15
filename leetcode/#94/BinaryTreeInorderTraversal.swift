//
//  BinaryTreeInorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.11.2023.
//

import Foundation

class BinaryTreeInorderTraversal {
    class Solution {
        func inorderTraversal(_ root: TreeNode?) -> [Int] {
            var res: [Int] = []
            dfs(root, &res)
            
            return res
        }
        
        private func dfs(_ root: TreeNode?, _ array: inout [Int]) {
            guard let root = root else { return }
            dfs(root.left, &array)
            array.append(root.val)
            dfs(root.right, &array)
        }
    }
}
