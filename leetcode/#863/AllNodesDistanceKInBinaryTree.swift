//
//  AllNodesDistanceKInBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.12.2023.
//

import Foundation

class AllNodesDistanceKInBinaryTree {
    class Solution {
        func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
            var res: [Int] = []
            guard let root = root, let target = target else { return res }
            var queue: [TreeNode] = [root]
            var adjacencyList: [Int: Set<Int>] = [:]
            
            while !queue.isEmpty {
                var currentLevel: [TreeNode] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    
                    
                    if let left = node.left {
                        currentLevel.append(left)
                        
                        if var vals = adjacencyList[node.val] {
                            vals.insert(left.val)
                            adjacencyList[node.val] = vals
                        } else {
                            adjacencyList[node.val] = .init([left.val])
                        }
                        
                        if var vals = adjacencyList[left.val] {
                            vals.insert(node.val)
                            adjacencyList[left.val] = vals
                        } else {
                            adjacencyList[left.val] = .init([node.val])
                        }
                    }
                    if let right = node.right {
                        currentLevel.append(right)
                        
                        if var vals = adjacencyList[node.val] {
                            vals.insert(right.val)
                            adjacencyList[node.val] = vals
                        } else {
                            adjacencyList[node.val] = .init([right.val])
                        }
                        
                        if var vals = adjacencyList[right.val] {
                            vals.insert(node.val)
                            adjacencyList[right.val] = vals
                        } else {
                            adjacencyList[right.val] = .init([node.val])
                        }
                    }
                }
                
                queue = currentLevel
            }
            
            var visited: Set<Int> = .init([target.val])
            
            func dfs(_ node: Int, _ distance: Int) {
                if distance == k {
                    res.append(node)
                    return
                }
                
                let neighbors = adjacencyList[node] ?? []
                for neighbor in neighbors {
                    guard !visited.contains(neighbor) else { continue }
                    visited.insert(neighbor)
                    dfs(neighbor, distance + 1)
                }
            }
            
            dfs(target.val, 0)
            
            return res
        }
    }
}
