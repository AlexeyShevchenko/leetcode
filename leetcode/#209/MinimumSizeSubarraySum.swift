//
//  MinimumSizeSubarraySum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.10.2023.
//

import Foundation

class MinimumSizeSubarraySum {
    class Solution {
        func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
            var left = 0
            var sum = 0
            var res: Int = .max
            
            for right in 0 ..< nums.count {
                let num = nums[right]
                sum += num
                while sum >= target {
                    res = min(res, right - left + 1)
                    sum -= nums[left]
                    left += 1
                }
            }
            
            return res == .max ? 0 : res
        }
    }
}
