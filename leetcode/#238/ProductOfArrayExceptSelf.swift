//
//  ProductOfArrayExceptSelf.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.08.2023.
//

import Foundation

class ProductOfArrayExceptSelf {
    class Solution {
        func productExceptSelf(_ nums: [Int]) -> [Int] {
            var prefix = Array(repeating: 1, count: nums.count)
            for i in 1 ..< nums.count {
                let previousIndex = i - 1
                prefix[i] = prefix[previousIndex] * nums[previousIndex]
            }
            
            var suffix = Array(repeating: 1, count: nums.count)
            for i in (0 ..< nums.count - 1).reversed() {
                let nextIndex = i + 1
                suffix[i] = suffix[nextIndex] * nums[nextIndex]
            }
            
            var result = Array(repeating: 0, count: nums.count)
            for i in 0 ..< nums.count {
                result[i] = prefix[i] * suffix[i]
            }
            
            return result
        }
    }
}
/*
 O(n) - time complexity
 O(n) - space complexity
 */
