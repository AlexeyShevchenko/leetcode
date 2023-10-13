//
//  SummaryRanges.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.10.2023.
//

import Foundation

class SummaryRanges {
    class Solution {
        func summaryRanges(_ nums: [Int]) -> [String] {
            if nums.isEmpty { return [] }
            var previous = nums[0]
            var arrayOfSubsequences = [[Int]]()
            arrayOfSubsequences.append([previous])
            
            for i in 1 ..< nums.count {
                let currentNum = nums[i]
                let diff = currentNum - previous
                if diff == 1 {
                    arrayOfSubsequences[arrayOfSubsequences.count - 1].append(currentNum)
                } else {
                    arrayOfSubsequences.append([currentNum])
                }
                previous = currentNum
            }
            
            let res: [String] = arrayOfSubsequences.compactMap { subsequence in
                subsequence.count == 1 ? "\(subsequence[0])" : "\(subsequence[0])->\(subsequence[subsequence.count - 1])"
            }
            return res
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
