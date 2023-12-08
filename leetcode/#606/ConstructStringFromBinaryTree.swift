//
//  ConstructStringFromBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.12.2023.
//

import Foundation

class ConstructStringFromBinaryTree {
    class Solution {
        func tree2str(_ root: TreeNode?) -> String {
            var res = ""
            
            func dfs(_ node: TreeNode?) {
                guard let node = node else { return }

                res.append("\(node.val)")
                
                if node.left == nil, node.right == nil { return }
                res.append("(")
                dfs(node.left)
                res.append(")")
                
                if let right = node.right {
                    res.append("(")
                    dfs(right)
                    res.append(")")
                }
            }
            
            dfs(root)
            
            return res
        }
    }
}
