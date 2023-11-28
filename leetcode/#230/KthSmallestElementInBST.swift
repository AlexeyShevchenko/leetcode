//
//  KthSmallestElementInBST.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.11.2023.
//

import Foundation

class KthSmallestElementInBST {
    class Solution {
        func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
            guard let root = root else { return 0 }
            var count = k
            var res = 0
            
            func dfs(_ node: TreeNode?) {
                guard let node = node, count > 0 else { return }

                dfs(node.left)
                if count > 0 {
                    count -= 1
                    res = node.val
                }
                dfs(node.right)
            }
            
            dfs(root)
            
            return res
        }
    }
}
