//
//  ConstructBinaryTreeFromInorderAndPostorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.11.2023.
//

import Foundation

class ConstructBinaryTreeFromInorderAndPostorderTraversal {
    class Solution {
        var postorderIndex: Int = 0
        var inorder: [Int] = []
        var postorder: [Int] = []
        var inorderValueAndItsIndex: [Int: Int] = [:]
        
        func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
            self.inorder = inorder
            self.postorder = postorder
            self.postorderIndex = postorder.count - 1
            
            for i in 0 ..< postorder.count {
                let value = postorder[i]
                inorderValueAndItsIndex[value] = i
            }
            
            return helper(0, inorder.count - 1)
        }
        
        private func helper(_ inorderLeft: Int, _ inorderRight: Int) -> TreeNode? {
            if inorderLeft > inorderRight {
                return nil
            }
            
            let rootValue = postorder[postorderIndex]
            let node: TreeNode = .init(rootValue)
            
            guard let inorderSplitIndex = inorderValueAndItsIndex[rootValue] else {
                return nil
            }
            postorderIndex -= 1
            
            node.right = helper(inorderSplitIndex + 1, inorderRight)
            node.left = helper(inorderLeft, inorderSplitIndex - 1)
            
            return node
        }
    }
}
