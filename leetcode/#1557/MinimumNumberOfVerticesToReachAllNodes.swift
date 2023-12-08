//
//  MinimumNumberOfVerticesToReachAllNodes.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.12.2023.
//

import Foundation

class MinimumNumberOfVerticesToReachAllNodes {
    class Solution {
        func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
            var reached: Set<Int> = .init()
            
            for i in 0 ..< edges.count {
                let edge = edges[i]
                let to = edge[1]
                reached.insert(to)
            }
            
            var res: [Int] = []
            
            for i in 0 ..< n {
                if reached.contains(i) { continue }
                res.append(i)
            }
            
            return res
        }
    }
}
