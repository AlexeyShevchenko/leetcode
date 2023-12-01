//
//  FlattenBinaryTreeToLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 30.11.2023.
//

import Foundation

class FlattenBinaryTreeToLinkedList {
    class Solution {
        func flatten(_ root: TreeNode?) {
            _ = flattenTree(root)
        }
        
        private func flattenTree(_ node: TreeNode?) -> TreeNode? {
            guard let node = node else { return nil }
            if node.left == nil, node.right == nil { return node }
            
            let leftTail = flattenTree(node.left)
            let rightTail = flattenTree(node.right)
 
            if let leftTail = leftTail {
                leftTail.right = node.right
                node.right = node.left
                node.left = nil
            }
            
            guard let rightTail = rightTail else { return leftTail }
            return rightTail
        }
    }
}
