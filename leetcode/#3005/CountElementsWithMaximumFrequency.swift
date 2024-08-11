//
//  CountElementsWithMaximumFrequency.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.08.2024.
//

import Foundation

class CountElementsWithMaximumFrequency {
    class Solution {
        func maxFrequencyElements(_ nums: [Int]) -> Int {
            var numAndCount: [Int: Int] = [:]
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                
                if let count = numAndCount[num] {
                    numAndCount[num] = 1 + count
                } else {
                    numAndCount[num] = 1
                }
            }

            var maxFrequency = 0
            
            for key in numAndCount.keys {
                guard let count = numAndCount[key] else { continue }
                maxFrequency = max(maxFrequency, count)
            }
            
            var res = 0
            
            for key in numAndCount.keys {
                guard let count = numAndCount[key] else { continue }
                guard count == maxFrequency else { continue }
                res += count
            }
            
            return res
        }
    }
}
