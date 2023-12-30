//
//  MaximumAverageSubarrayI.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 30.12.2023.
//

import Foundation

class MaximumAverageSubarrayI {
    class Solution {
        func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
            var firstSum = 0
            for i in 0 ..< k {
                firstSum += nums[i]
            }
            var maxSum = firstSum
            
            for i in k ..< nums.count {
                firstSum += nums[i] - nums[i - k]
                maxSum = max(maxSum, firstSum)
            }
            
            return Double(maxSum) / Double(k)
        }
    }
}
