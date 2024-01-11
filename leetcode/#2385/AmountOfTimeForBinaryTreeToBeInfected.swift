//
//  AmountOfTimeForBinaryTreeToBeInfected.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.01.2024.
//

import Foundation

class AmountOfTimeForBinaryTreeToBeInfected {
    class Solution {
        func amountOfTime(_ root: TreeNode?, _ start: Int) -> Int {
            guard let root = root else { return 0 }
            var adjacencyList: [Int: Set<Int>] = [:]
            treeToGraph(root, 0, &adjacencyList)
            
            var queue: [Int] = [start]
            var visited: Set<Int> = .init(queue)
            var time = 0
            
            while !queue.isEmpty {
                var currentLevel: [Int] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    guard var adjacencies = adjacencyList[node] else { continue }
                    while let adjacency = adjacencies.popFirst() {
                        guard !visited.contains(adjacency) else { continue }
                        visited.insert(adjacency)
                        currentLevel.append(adjacency)
                    }
                }
                
                queue = currentLevel
                if !currentLevel.isEmpty {
                    time += 1
                }
            }
            
            return time
        }
        
        private func treeToGraph(
            _ node: TreeNode?,
            _ parent: Int,
            _ adjacencyList: inout [Int: Set<Int>]
        ) {
            guard let node = node else { return }
            
            if !adjacencyList.keys.contains(node.val) {
                adjacencyList[node.val] = .init()
            }
            
            if parent != 0 {
                adjacencyList[node.val]?.insert(parent)
            }
            
            if let left = node.left {
                adjacencyList[node.val]?.insert(left.val)
            }
            
            if let right = node.right {
                adjacencyList[node.val]?.insert(right.val)
            }
            
            treeToGraph(node.left, node.val, &adjacencyList)
            treeToGraph(node.right, node.val, &adjacencyList)
        }
    }
}
