//
//  PathSumII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.11.2023.
//

import Foundation

class PathSumII {
    class Solution {
        func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
            var res: [[Int]] = []
            guard let root = root else { return res }
            dfs(root, targetSum, [], &res)
            
            return res
        }
        
        private func dfs(_ node: TreeNode?, _ targetSum: Int, _ currentParh: [Int], _ res: inout [[Int]]) {
            guard let node = node else { return }
            let updatedTargetSum = targetSum - node.val
            let updatedCurrentPath = currentParh + [node.val]
         
            if node.left == nil, node.right == nil, updatedTargetSum == 0 {
                res.append(updatedCurrentPath)
                return
            }
            
            dfs(node.left, updatedTargetSum, updatedCurrentPath, &res)
            dfs(node.right, updatedTargetSum, updatedCurrentPath, &res)
        }
    }
}
