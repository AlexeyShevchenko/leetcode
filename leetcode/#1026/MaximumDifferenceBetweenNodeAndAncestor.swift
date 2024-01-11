//
//  MaximumDifferenceBetweenNodeAndAncestor.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.01.2024.
//

import Foundation

class MaximumDifferenceBetweenNodeAndAncestor {
    class Solution {
        func maxAncestorDiff(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            
            func dfs(
                _ node: TreeNode?,
                _ currentMax: Int,
                _ currentMin: Int
            ) -> Int {
                guard let node = node else {
                    return currentMax - currentMin
                }
                let currentMax = max(currentMax, node.val)
                let currentMin = min(currentMin, node.val)
                let left = dfs(node.left, currentMax, currentMin)
                let right = dfs(node.right, currentMax, currentMin)
                
                return max(left, right)
            }
            
            let res = dfs(root, root.val, root.val)
            
            return res
        }
    }
}
