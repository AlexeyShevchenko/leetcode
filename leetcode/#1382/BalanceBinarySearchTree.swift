//
//  BalanceBinarySearchTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.06.2024.
//

import Foundation

class BalanceBinarySearchTree {
    class Solution {
        func balanceBST(_ root: TreeNode?) -> TreeNode? {
            var inorder: [Int] = []
            
            func dfs(_ node: TreeNode?) {
                guard let node else { return }
                dfs(node.left)
                inorder.append(node.val)
                dfs(node.right)
            }
            
            dfs(root)
            
            func createBalancesBST(_ start: Int, _ end: Int) -> TreeNode? {
                if start > end { return nil }
                let middle = start + (end - start) / 2
                let left = createBalancesBST(start, middle - 1)
                let right = createBalancesBST(middle + 1, end)
                let node: TreeNode = .init(inorder[middle],
                    left,
                    right
                )
                return node
            }
            
            return createBalancesBST(0, inorder.count - 1)
        }
    }
}
