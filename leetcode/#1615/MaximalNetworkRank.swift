//
//  MaximalNetworkRank.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.12.2023.
//

import Foundation

class MaximalNetworkRank {
    class Solution {
        func maximalNetworkRank(_ n: Int, _ roads: [[Int]]) -> Int {
            var connections: [Int: Set<Int>] = [:]
            
            for i in 0 ..< roads.count {
                let road = roads[i]
                let from = road[0]
                let to = road[1]
                
                if var roadConnections = connections[from] {
                    roadConnections.insert(to)
                    connections[from] = roadConnections
                } else {
                    connections[from] = .init([to])
                }
                
                if var roadConnections = connections[to] {
                    roadConnections.insert(from)
                    connections[to] = roadConnections
                } else {
                    connections[to] = .init([from])
                }
            }
            
            var res: Int = .min
            
            for i in 0 ..< n {
                for j in i + 1 ..< n {
                    var networkRank = (connections[i]?.count ?? 0) + (connections[j]?.count ?? 0)
                    let isIConnectedWithJ = connections[i]?.contains(j) ?? false
                    if isIConnectedWithJ {
                        networkRank -= 1
                    }
                    res = max(res, networkRank)
                }
            }
            
            return res
        }
    }
}
