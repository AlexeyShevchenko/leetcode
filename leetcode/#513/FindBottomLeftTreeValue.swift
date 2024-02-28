//
//  FindBottomLeftTreeValue.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.02.2024.
//

import Foundation

class FindBottomLeftTreeValue {
    class Solution {
        func findBottomLeftValue(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            var stack: [TreeNode] = [root]
            
            while !stack.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< stack.count {
                    let node = stack[i]
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                if currentLevel.isEmpty {
                    return stack.first?.val ?? 0
                } else {
                    stack = currentLevel
                }
            }
            
            return 0
        }
    }
}
/*
 T = O(n)
 S = O(n)
 */
