//
//  CloneGraph.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.09.2023.
//

import Foundation

class CloneGraph {
    class Solution {
        func cloneGraph(_ node: Node?) -> Node? {
            guard let node = node else { return nil }
            var visited: [Int: Node] = [:]
            return cloneGraph(node, &visited)
        }
        
        private func cloneGraph(_ node: Node?, _ visited: inout [Int: Node]) -> Node? {
            guard let node = node else { return nil }
            
            if let existingNodeCopy = visited[node.val] {
                return existingNodeCopy
            }
            
            let nodeCopy: Node = .init(node.val)
            visited[node.val] = nodeCopy

            for neighbor in node.neighbors {
                guard let neighbor = neighbor else { continue }
                
                if let node = visited[neighbor.val] {
                    nodeCopy.neighbors.append(node)
                } else {
                    nodeCopy.neighbors.append(cloneGraph(neighbor, &visited))
                }
            }
            
            return nodeCopy
        }
    }
}
