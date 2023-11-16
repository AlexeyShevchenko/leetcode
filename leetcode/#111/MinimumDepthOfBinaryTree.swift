//
//  MinimumDepthOfBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.11.2023.
//

import Foundation

class MinimumDepthOfBinaryTree {
    class Solution {
        func minDepth(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            var queue: [TreeNode] = []
            queue.append(root)
            var depth = 1
            
            while !queue.isEmpty {
                for _ in 0 ..< queue.count {
                    let node = queue.removeFirst()
                    
                    if node.left == nil, node.right == nil {
                        return depth
                    }
                    
                    if let left = node.left {
                        queue.append(left)
                    }
                    
                    if let right = node.right {
                        queue.append(right)
                    }
                }
                depth += 1
            }
            
            return depth
        }
    }
}
