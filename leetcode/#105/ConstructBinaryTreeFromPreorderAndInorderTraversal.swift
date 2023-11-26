//
//  ConstructBinaryTreeFromPreorderAndInorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.11.2023.
//

import Foundation

class ConstructBinaryTreeFromPreorderAndInorderTraversal {
    class Solution {
        func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
            var inorderMap: [Int: Int] = [:]
            for i in 0 ..< inorder.count {
                inorderMap[inorder[i]] = i
            }
            
            return splitTree(
                preorder,
                inorderMap,
                0,
                0,
                preorder.count - 1
            )
        }
        
        private func splitTree(
            _ preorder: [Int],
            _ inorderMap: [Int: Int],
            _ rootIndex: Int,
            _ left: Int,
            _ right: Int
        ) -> TreeNode? {
            var root: TreeNode = .init(preorder[rootIndex])
            guard let middle = inorderMap[preorder[rootIndex]] else { return root }
            
            if middle > left {
                root.left = splitTree(
                    preorder,
                    inorderMap,
                    rootIndex + 1,
                    left,
                    middle - 1
                )
            }
            if middle < right {
                root.right = splitTree(
                    preorder,
                    inorderMap,
                    rootIndex + middle - left + 1,
                    middle + 1,
                    right
                )
            }
            
            return root
        }
    }
}
