//
//  Maximum Subarray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.08.2023.
//

import Foundation

class MaximumSubarray {
    class Solution {
        func maxSubArray(_ nums: [Int]) -> Int {
            var curSum = nums[0]
            var maxSum = nums[0]
            
            for i in 1 ..< nums.count {
                curSum = max(nums[i], curSum + nums[i])
                maxSum = max(maxSum, curSum)
            }
            
            return maxSum
        }
    }
}
