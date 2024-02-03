//
//  PartitionArrayForMaximumSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.02.2024.
//

import Foundation

class PartitionArrayForMaximumSum {
    class Solution {
        func maxSumAfterPartitioning(_ arr: [Int], _ k: Int) -> Int {
            var dp: [Int] = .init(repeating: -1, count: arr.count)
            return maxSum(arr, k, &dp, 0)
        }
        
        private func maxSum(
            _ arr: [Int],
            _ k: Int,
            _ dp: inout [Int],
            _ start: Int
        ) -> Int {
            let lenght = arr.count
            
            if start >= lenght {
                return 0
            }
            
            if dp[start] != -1 {
                return dp[start]
            }
            
            let end: Int = min(lenght, start + k)
            var currentMax = 0
            var res = 0
            
            for i in start ..< end {
                currentMax = max(currentMax, arr[i])
                res = max(
                    res,
                    currentMax * (i - start + 1) + maxSum(arr, k, &dp, i + 1)
                )
            }
            
            dp[start] = res
            
            return res
        }
    }
}
