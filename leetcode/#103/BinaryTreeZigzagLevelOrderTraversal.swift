//
//  BinaryTreeZigzagLevelOrderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.11.2023.
//

import Foundation

class BinaryTreeZigzagLevelOrderTraversal {
    class Solution {
        private enum Direction {
            case fromLeftToRight
            case fromRightToLeft
        }
        
        func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
            var res: [[Int]] = []
            guard let root = root else { return res }
            var direction: Direction = .fromLeftToRight
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                let values = queue.map { $0.val }
                
                switch direction {
                case .fromLeftToRight:
                    res.append(values)
                case .fromRightToLeft:
                    res.append(values.reversed())
                }
                
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
                
                switch direction {
                case .fromLeftToRight:
                    direction = .fromRightToLeft
                case .fromRightToLeft:
                    direction = .fromLeftToRight
                }
                
                queue = currentLevel
            }
            
            return res
        }
    }
}
