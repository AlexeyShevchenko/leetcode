//
//  MinCostClimbingStairs.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.09.2023.
//

import Foundation

class MinCostClimbingStairs {
    class Solution {
        func minCostClimbingStairs(_ cost: [Int]) -> Int {
            if cost.isEmpty { return 0 }
            if cost.count == 1 { return cost[0] }

            var a = cost[0]
            var b = cost[1]
            
            for i in 2 ..< cost.count {
                var c = cost[i]
                if a < b {
                    c += a
                } else {
                    c += b
                }
                a = b
                b = c
            }
            
            return min(a, b)
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(1)
