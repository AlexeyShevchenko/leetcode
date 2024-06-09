//
//  SubarraySumsDivisibleByK.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.06.2024.
//

import Foundation

class SubarraySumsDivisibleByK {
    class Solution {
        func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
            var result = 0
            var prefixSum = 0
            var reminderAndCount = [0 : 1]
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                prefixSum += num
                var reminder = prefixSum % k
                
                if reminder < 0 {
                    reminder += k
                }
                
                if let count = reminderAndCount[reminder] {
                    result += count
                    reminderAndCount[reminder] = 1 + count
                } else {
                    reminderAndCount[reminder] = 1
                }
            }
            
            return result
        }
    }
}
