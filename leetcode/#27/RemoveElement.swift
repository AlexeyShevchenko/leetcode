//
//  RemoveElement.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.09.2023.
//

import Foundation

class RemoveElement {
    class Solution {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            var numberOfAnothers = 0
            
            for i in 0 ..< nums.count {
                if nums[i] != val {
                    nums[numberOfAnothers] = nums[i]
                    numberOfAnothers += 1
                }
            }
            
            return numberOfAnothers
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(1)
