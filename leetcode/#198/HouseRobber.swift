//
//  HouseRobber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.10.2023.
//

import Foundation

class HouseRobber {
    class Solution {
        func rob(_ nums: [Int]) -> Int {
            if nums.isEmpty { return 0 }
            if nums.count < 2 { return nums[0] }
            var dp: [Int] = .init(repeating: 0, count: nums.count)
            dp[0] = nums[0]
            dp[1] = max(nums[0], nums[1])
            
            for i in 2 ..< nums.count {
                let num = nums[i]
                dp[i] = max(num + dp[i - 2], dp[i - 1])
            }
            
            return dp[dp.count - 1]
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
