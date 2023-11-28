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
            var queue: [Int] = []
            
            func dfs(_ node: TreeNode?) {
                guard let node = node else { return }
                
                dfs(node.left)
                queue.append(node.val)
                dfs(node.right)
            }
            
            dfs(root)
            
            return queue[k - 1]
        }
    }
}
