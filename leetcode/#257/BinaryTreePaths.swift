//
//  BinaryTreePaths.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.11.2023.
//

import Foundation

class BinaryTreePaths {
    class Solution {
        func binaryTreePaths(_ root: TreeNode?) -> [String] {
            var res: [String] = []
            guard let root = root else { return res }
            dfs(root, "", &res)
            
            return res
        }
        
        private func dfs(_ node: TreeNode, _ currentPath: String, _ res: inout [String]) {
            if node.left == nil, node.right == nil {
                res.append("\(currentPath)\(node.val)")
            }
            if let left = node.left {
                dfs(left, "\(currentPath)\(node.val)->", &res)
            }
            if let right = node.right {
                dfs(right, "\(currentPath)\(node.val)->", &res)
            }
        }
    }
}
