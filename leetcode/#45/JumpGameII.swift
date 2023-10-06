//
//  JumpGameII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.10.2023.
//

import Foundation

class JumpGameII {
    class Solution {
        func jump(_ nums: [Int]) -> Int {
            var res = 0
            var left = 0
            var right = 0
            
            while right < nums.count - 1 {
                var farthest = 0
                for i in left ... right {
                    farthest = max(farthest, i + nums[i])
                }
                left = right + 1
                right = farthest
                res += 1
            }
            
            return res
        }
    }
}
