//
//  SortArrayByIncreasingFrequency.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.08.2024.
//

import Foundation

class SortArrayByIncreasingFrequency {
    class Solution {
        func frequencySort(_ nums: [Int]) -> [Int] {
            var numAndCount: [Int: Int] = [:]
            for i in 0 ..< nums.count {
                let num = nums[i]
                
                if let count = numAndCount[num] {
                    numAndCount[num] = 1 + count
                } else {
                    numAndCount[num] = 1
                }
            }
            
            let result = nums.sorted { num1, num2 in
                guard let num1Count = numAndCount[num1] else { return false }
                guard let num2Count = numAndCount[num2] else { return false }
                return (num1Count == num2Count) ? (num1 > num2) : (num1Count < num2Count)
            }

            return result
        }
    }
}
