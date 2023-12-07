//
//  AllPathsFromSourceToTarget.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.12.2023.
//

import Foundation

class AllPathsFromSourceToTarget {
    class Solution {
        func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
            var res: [[Int]] = []
            var path: [Int] = [0]
            let target = graph.count - 1
            backtrack(0, target, graph, &path, &res)
            return res
        }
        
        private func backtrack(
            _ node: Int,
            _ target: Int,
            _ graph: [[Int]],
            _ path: inout [Int],
            _ res: inout [[Int]]
        ) {
            if node == target {
                res.append(path)
                return
            }
            
            let toNodes = graph[node]
            
            for i in 0 ..< toNodes.count {
                let toNode = toNodes[i]
                path.append(toNode)
                backtrack(toNode, target, graph, &path, &res)
                _ = path.popLast()
            }
        }
    }
}
