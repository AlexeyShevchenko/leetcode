//
//  ClimbingStairs.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.08.2023.
//

import Foundation

class ClimbingStairs {
    class Solution {
        func climbStairs(_ n: Int) -> Int {
            if n == 1 { return 1 }
            let holderLength = n + 1
            var stepsHolder: [Int] = Array(repeating: 0, count: holderLength)
            stepsHolder[1] = 1
            stepsHolder[2] = 2
            
            for i in 3 ..< holderLength {
                stepsHolder[i] = stepsHolder[i - 1] + stepsHolder[i - 2]
            }
            
            return stepsHolder[n]
        }
    }
}
