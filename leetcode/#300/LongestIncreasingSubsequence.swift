//
//  LongestIncreasingSubsequence.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.08.2023.
//

import Foundation

class LongestIncreasingSubsequence {
    class Solution {
        func lengthOfLIS(_ nums: [Int]) -> Int {
            var maxLengths = Array(repeating: 1, count: nums.count)
            var maxLength = 1
            
            for i in 1 ..< nums.count {
                for j in 0 ... (i - 1) {
                    if nums[i] > nums[j] {
                        maxLengths[i] = max(maxLengths[j] + 1, maxLengths[i])
                        maxLength = max(maxLength, maxLengths[i])
                    }
                }
            }
            
            return maxLength
        }
    }
}

// Time complexity O(n^2)
// Space compexity O(n)
