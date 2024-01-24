//
//  PseudoPalindromicPathsInBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.01.2024.
//

import Foundation

class PseudoPalindromicPathsInBinaryTree {
    class Solution {
        func pseudoPalindromicPaths(_ root: TreeNode?) -> Int {
            var res = 0
            guard let root = root else { return res }
            
            func dfs(
                _ node: TreeNode?,
                _ set: Set<Int>
            ) {
                guard let node = node else { return }
                
                var set = set
                let num = node.val
                if set.contains(num) {
                    set.remove(num)
                } else {
                    set.insert(num)
                }
                
                if node.left == nil, node.right == nil {
                    if set.count < 2 {
                        res += 1
                    }
                    return
                }
                
                dfs(node.left, set)
                dfs(node.right, set)
            }
            
            dfs(root, .init())
            
            return res
        }
    }
}
