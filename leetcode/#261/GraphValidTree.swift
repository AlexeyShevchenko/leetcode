//
//  GraphValidTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.12.2023.
//

import Foundation

class GraphValidTree {
    class Solution {
        func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
            var adjacencies: [Int: [Int]] = [:]
            for num in 0 ..< n {
                adjacencies[num] = []
            }
            
            for i in 0 ..< edges.count {
                let edge = edges[i]
                let n1 = edge[0]
                let n2 = edge[1]
                adjacencies[n1]?.append(n2)
                adjacencies[n2]?.append(n1)
            }
            
            var visited: Set<Int> = .init()
            
            func dfs(_ node: Int, _ prev: Int) -> Bool {
                if visited.contains(node) { return false }
                visited.insert(node)
                
                guard let nodeAdjacencies = adjacencies[node] else { return false }
                
                for i in 0 ..< nodeAdjacencies.count {
                    let nodeAdjacency = nodeAdjacencies[i]
                    if nodeAdjacency == prev { continue }
                    
                    let noLoop = dfs(nodeAdjacency, node)
                    if !noLoop {
                        return false
                    }
                }
                
                return true
            }
            
            return dfs(0, -1) && visited.count == n
        }
    }
}
