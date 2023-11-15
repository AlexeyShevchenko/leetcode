//
//  SubtreeOfAnotherTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.11.2023.
//

import Foundation

class SubtreeOfAnotherTree {
    class Solution {
        func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
            if root == nil, subRoot == nil { return true }
            if root == nil || subRoot == nil { return false }
            
            if isSameTree(root, subRoot) {
                return true
            }
            
            return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
        }
        
        private func isSameTree(_ node1: TreeNode? , _ node2: TreeNode?) -> Bool {
            if node1 == nil, node2 == nil { return true }
            if node1 == nil || node2 == nil { return false }
            if node1?.val != node2?.val { return false }
            
            return isSameTree(node1?.left, node2?.left) && isSameTree(node1?.right, node2?.right)
        }
    }
}
