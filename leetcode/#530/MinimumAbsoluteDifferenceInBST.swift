//
//  MinimumAbsoluteDifferenceInBST.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.11.2023.
//

import Foundation

class MinimumAbsoluteDifferenceInBST {
    class Solution {
        func getMinimumDifference(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            var minDiff: Int = .max
            var prevNode: TreeNode? = nil
            dfs(root, &prevNode, &minDiff)
            
            return minDiff
        }
        
        private func dfs(
            _ currentNode: TreeNode?,
            _ prevNode: inout TreeNode?,
            _ minDiff: inout Int
        ) {
            guard let node = currentNode else { return }
            
            dfs(node.left, &prevNode, &minDiff)
            
            if let prevNode = prevNode {
                minDiff = min(minDiff, abs(prevNode.val - node.val))
            }
            prevNode = node
            
            dfs(node.right, &prevNode, &minDiff)
        }
    }
}
