//
//  TwoSumLessThanK.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.12.2023.
//

import Foundation

class TwoSumLessThanK {
    class Solution {
        func twoSumLessThanK(_ nums: [Int], _ k: Int) -> Int {
            var res = -1
            guard nums.count > 2 else { return res }
            var left = 0
            var right = nums.count - 1
            let nums = nums.sorted()
            
            while left < right {
                let sum = nums[left] + nums[right]
                if (sum < k) {
                    res = max(res, sum)
                    left += 1
                } else {
                    right -= 1
                }
            }
            
            return res
        }
    }
}
