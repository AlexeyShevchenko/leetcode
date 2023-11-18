//
//  SumOfLeftLeaves.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.11.2023.
//

import Foundation

class SumOfLeftLeaves {
    class Solution {
        func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
            var sum = 0
            guard let root = root else { return sum }
            dfs(root, false, &sum)
            
            return sum
        }
        
        private func dfs(_ node: TreeNode?, _ isLeft: Bool, _ sum: inout Int) {
            guard let node = node else { return }
            if node.left == nil, node.right == nil, isLeft {
                sum += node.val
                return
            }

            dfs(node.left, true, &sum)
            dfs(node.right, false, &sum)
        }
    }
}
