//
//  BinaryTreeRightSideView.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2023.
//

import Foundation

class BinaryTreeRightSideView {
    class Solution {
        func rightSideView(_ root: TreeNode?) -> [Int] {
            var res: [Int] = []
            guard let root = root else { return res }
            res.append(root.val)
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                if !currentLevel.isEmpty {
                    let lastNodeInCurrentLevel = currentLevel[currentLevel.count - 1]
                    res.append(lastNodeInCurrentLevel.val)
                }
                
                queue = currentLevel
            }
            
            return res
        }
    }
}
