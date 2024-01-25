//
//  MinimumCostToConnectSticks.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.01.2024.
//

import Foundation

class MinimumCostToConnectSticks {
    class Solution {
        func connectSticks(_ sticks: [Int]) -> Int {
            var res = 0
            var sticks = sticks.sorted()
            
            if sticks.count == 1 { return res }
            if sticks.count == 2 { return sticks[0] + sticks[1] }
            
            while sticks.count > 1 {
                let stick1 = sticks.removeFirst()
                let stick2 = sticks.removeFirst()
                let resultStick = stick1 + stick2
                res += resultStick
                sticks.append(resultStick)
                sticks.sort()
            }
            
            return res
        }
    }
}
/*
 Input: sticks = [2,4,3]
 Output: 14
 
 [2,3,4]
 2+3=5
 res+=5 (0+5)
 
 5,4
 5+4=9
 res+=9 (5+9)
 
 9
 
 */
