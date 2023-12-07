//
//  FindIfPathExistsInGraph.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 07.12.2023.
//

import Foundation

class FindIfPathExistsInGraph {
    class Solution {
        func validPath(
            _ n: Int,
            _ edges: [[Int]],
            _ source: Int,
            _ destination: Int
        ) -> Bool {
            var connections: [Int: [Int]] = [:]
            for i in 0 ..< edges.count {
                let edge = edges[i]
                let u = edge[0]
                let v = edge[1]
                
                if let fromU = connections[u] {
                    connections[u] = fromU + [v]
                } else {
                    connections[u] = [v]
                }
                
                if let fromV = connections[v] {
                    connections[v] = fromV + [u]
                } else {
                    connections[v] = [u]
                }
            }
            
            var seen: [Bool] = .init(repeating: false, count: n)
            var queue: [Int] = [source]
            
            while !queue.isEmpty {
                let currentNode = queue.removeFirst()
                if currentNode == destination {
                    return true
                }
                
                guard let neighbors = connections[currentNode] else { continue }
                for i in 0 ..< neighbors.count {
                    let neighbor = neighbors[i]
                    if seen[neighbor] { continue }
                    seen[neighbor] = true
                    queue.append(neighbor)
                }
            }
            
            return false
        }
    }
}
