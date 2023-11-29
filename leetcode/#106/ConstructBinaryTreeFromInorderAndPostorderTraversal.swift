//
//  ConstructBinaryTreeFromInorderAndPostorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.11.2023.
//

import Foundation

class ConstructBinaryTreeFromInorderAndPostorderTraversal {
    class Solution {
        var postorderIndex = 0
        var inorder: [Int] = []
        var postorder: [Int] = []
        var inorderValueAndItsIndex: [Int: Int] = [:]
        
        func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
            self.inorder = inorder
            self.postorder = postorder
            self.postorderIndex = postorder.count - 1
            
            for i in 0 ..< inorder.count {
                let value = inorder[i]
                inorderValueAndItsIndex[value] = i
            }
            
            return buildTree(0, inorder.count - 1)
        }
        
        private func buildTree(_ inorderLeft: Int, _ inorderRight: Int) -> TreeNode? {
            if inorderLeft > inorderRight {
                return nil
            }
            
            let rootValue = postorder[postorderIndex]
            let node: TreeNode = .init(rootValue)
            
            guard let inorderSplitIndex = inorderValueAndItsIndex[rootValue] else {
                return nil
            }
            postorderIndex -= 1
            
            node.right = buildTree(inorderSplitIndex + 1, inorderRight)
            node.left = buildTree(inorderLeft, inorderSplitIndex - 1)
            
            return node
        }
    }
}
