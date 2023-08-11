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
            guard !nums.isEmpty else { return 0 }
            
            var maxSum = nums[0]
            var maxCurrentSum = nums[0]
            
            for i in 1 ..< nums.count {
                let currentNum = nums[i]
                let possibleMaxCurrentSum = maxCurrentSum + currentNum
                maxCurrentSum = max(possibleMaxCurrentSum, currentNum)
                maxSum = max(maxSum, maxCurrentSum)
            }
            
            return maxSum
        }
    }
}
