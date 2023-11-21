//
//  TwoSumIVInputIsBST.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.11.2023.
//

import Foundation

class TwoSumIVInputIsBST {
    class Solution {
        func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
            guard let root = root else { return false }
            var set: Set<Int> = .init()
            var queue: [TreeNode] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    let searchedVal = k - node.val
                    
                    if set.contains(searchedVal) {
                        return true
                    }
                    
                    set.insert(node.val)
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                queue = currentLevel
            }
            
            return false
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
