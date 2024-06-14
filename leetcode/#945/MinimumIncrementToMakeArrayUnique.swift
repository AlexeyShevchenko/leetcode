//
//  MinimumIncrementToMakeArrayUnique.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.06.2024.
//

import Foundation

class MinimumIncrementToMakeArrayUnique {
    class Solution {
        func minIncrementForUnique(_ nums: [Int]) -> Int {
            var result = 0
            guard nums.count > 1 else { return result }
            var nums = nums.sorted()

            for i in 1 ..< nums.count {
                let previous = nums[i - 1]
                let current = nums[i]
                
                if previous < current {
                    continue
                } else {
                    let diff = previous - current + 1
                    result += diff
                    nums[i] += diff
                }
            }
            
            return result
        }
    }
}
