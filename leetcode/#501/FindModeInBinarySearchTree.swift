//
//  FindModeInBinarySearchTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.11.2023.
//

import Foundation

class FindModeInBinarySearchTree {
    class Solution {
        func findMode(_ root: TreeNode?) -> [Int] {
            var dict: [Int: Int] = [:]
            guard let root = root else { return [] }
            
            dfs(root, &dict)
            
            var maxFrequency = 0
            for key in dict.keys {
                if let frequency = dict[key] {
                    maxFrequency = max(maxFrequency, frequency)
                }
            }
            
            var res: [Int] = []
            
            for key in dict.keys {
                if let frequency = dict[key], frequency == maxFrequency {
                    res.append(key)
                }
            }
            
            return res
        }
        
        private func dfs(_ node: TreeNode?, _ dict: inout [Int: Int]) {
            guard let node = node else { return }
            
            let val = node.val
            if let frequency = dict[val] {
                dict[val] = frequency + 1
            } else {
                dict[val] = 1
            }
            
            dfs(node.left, &dict)
            dfs(node.right, &dict)
        }
    }
}
