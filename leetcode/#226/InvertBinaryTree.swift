//
//  InvertBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.09.2023.
//

import Foundation

class InvertBinaryTree {
    class Solution {
        func invertTree(_ root: TreeNode?) -> TreeNode? {
            guard let root = root else { return nil }
            let temp = root.left
            root.left = root.right
            root.right = temp
            
            _ = invertTree(root.left)
            _ = invertTree(root.right)
            
            return root
        }
    }
}

// Time complexity: O(n)
