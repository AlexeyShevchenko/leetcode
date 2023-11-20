//
//  MergeTwoBinaryTrees.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 20.11.2023.
//

import Foundation

class MergeTwoBinaryTrees {
    class Solution {
        func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
            if root1 == nil, root2 == nil { return nil }
            
            var val1 = root1?.val ?? 0
            var val2 = root2?.val ?? 0
            var root: TreeNode = .init(
                val1 + val2,
                mergeTrees(root1?.left, root2?.left),
                mergeTrees(root1?.right, root2?.right)
            )
            
            return root
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
