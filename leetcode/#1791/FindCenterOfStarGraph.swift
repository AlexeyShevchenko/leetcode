//
//  FindCenterOfStarGraph.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.09.2023.
//

import Foundation

class FindCenterOfStarGraph {
    class Solution {
        func findCenter(_ edges: [[Int]]) -> Int {
            var incomingDegrees: [Int: Int] = [:]
            for i in 0 ..< edges.count {
                let edge = edges[i]
                let start = edge[0]
                let end = edge[1]
                
                if let s = incomingDegrees[start] {
                    incomingDegrees[start] = s + 1
                } else {
                    incomingDegrees[start] = 1
                }
                
                if let e = incomingDegrees[end] {
                    incomingDegrees[end] = e + 1
                } else {
                    incomingDegrees[end] = 1
                }
            }
            
            let centerIncoming = edges.count
            for k in incomingDegrees.keys {
                guard let count = incomingDegrees[k] else { continue }
                if count == centerIncoming {
                    return k
                }
            }

            return 0
        }
    }
}
