//
//  MissingNumber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.08.2023.
//

import Foundation

class MissingNumber {
    class Solution {
        func missingNumber(_ nums: [Int]) -> Int {
            var result = 0
            
            for i in 0 ..< nums.count {
                result = result - nums[i] + (i + 1)
            }
            
            return result
        }
    }
}
