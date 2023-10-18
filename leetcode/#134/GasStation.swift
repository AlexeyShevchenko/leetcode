//
//  GasStation.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.10.2023.
//

import Foundation

class GasStation {
    class Solution {
        func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
            var gasSum = 0
            for i in 0 ..< gas.count {
                gasSum += gas[i]
            }
            var costSum = 0
            for i in 0 ..< cost.count {
                costSum += cost[i]
            }
            
            if gasSum < costSum {
                return -1
            }
            
            var res = 0
            var total = 0
            
            for i in 0 ..< gas.count {
                let diff = gas[i] - cost[i]
                total += diff
                if total < 0 {
                    total = 0
                    res = i + 1
                }
            }
            
            return res
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
