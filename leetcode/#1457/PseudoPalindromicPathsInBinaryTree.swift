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
                _ currentPath: [Int],
                _ set: Set<Int>
            ) {
                guard let node = node else { return }
                let num = node.val
                
                var currentPath = currentPath
                currentPath.append(num)
                
                var set = set
                if set.contains(num) {
                    set.remove(num)
                } else {
                    set.insert(num)
                }
                
                if node.left == nil, node.right == nil {
                    if currentPath.count % 2 == 0 {
                        if set.isEmpty {
                            res += 1
                        }
                    } else {
                        if set.count == 1 {
                            res += 1
                        }
                    }
                    
                    return
                }
                
                dfs(node.left, currentPath, set)
                dfs(node.right, currentPath, set)
            }
            
            dfs(root, [], .init())
            
            return res
        }
    }
}
