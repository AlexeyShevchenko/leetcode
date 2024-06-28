//
//  MaximumTotalImportanceOfRoads.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.06.2024.
//

import Foundation

class MaximumTotalImportanceOfRoads {
    class Solution {
        func maximumImportance(_ n: Int, _ roads: [[Int]]) -> Int {
            var edgeAndCount: [Int] = .init(repeating: 0, count: n)
            
            for i in 0 ..< roads.count {
                let road = roads[i]
                let from = road[0]
                let to = road[1]
                edgeAndCount[from] += 1
                edgeAndCount[to] += 1
            }
            
            var label = 1
            var res = 0
            
            for count in edgeAndCount.sorted() {
                res += label * count
                label += 1
            }
            
            return res
        }
    }
}
