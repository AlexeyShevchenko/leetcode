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

            func dfs(_ node: TreeNode?, _ currentPath: [Int]) {
                guard let node = node else { return }
                var currentPath = currentPath
                currentPath.append(node.val)
                
                if node.left == nil, node.right == nil {
                    var set: Set<Int> = .init()
                    for i in 0 ..< currentPath.count {
                        let num = currentPath[i]
                        if set.contains(num) {
                            set.remove(num)
                        } else {
                            set.insert(num)
                        }
                    }
                    
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
                
                dfs(node.left, currentPath)
                dfs(node.right, currentPath)
            }
            
            dfs(root, [])
            
            return res
        }
        
        // 2 1 1
        // 2 1 3 1
        // 2 1
        
        // if odd:
        // 2 1 1
        // one number occur odd times, others numbers occur even times
        // 3 3 3 5 5 -> 3 5 3 5 3
        // 3 -> 3
        // 5 -> 2
        
        // if even
        // all numbers occur even times
        
    }
}
