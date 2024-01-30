//
//  PaintHouse.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 30.01.2024.
//

import Foundation

class PaintHouse {
    class Solution {
        func minCost(_ costs: [[Int]]) -> Int {
            var costs = costs
            
            for i in 1 ..< costs.count {
                let prevHousePaintCost = costs[i - 1]
                costs[i][0] = costs[i][0] + min(prevHousePaintCost[1], prevHousePaintCost[2])
                costs[i][1] = costs[i][1] + min(prevHousePaintCost[0], prevHousePaintCost[2])
                costs[i][2] = costs[i][2] + min(prevHousePaintCost[0], prevHousePaintCost[1])
            }
            
            return costs[costs.count - 1].min() ?? 0
        }
    }
}
