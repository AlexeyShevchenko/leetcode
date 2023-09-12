//
//  LongestConsecutiveSequence.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.09.2023.
//

import Foundation

class LongestConsecutiveSequence {
    class Solution {
        func longestConsecutive(_ nums: [Int]) -> Int {
            let set: Set<Int> = .init(nums)
            var maxLenght = 0
            
            for num in nums {
                let previousConsecutiveNum = num - 1
                if set.contains(previousConsecutiveNum) { continue }
                
                var currentMaxLenght = 1
                var nextConsecutiveNum = num + 1
                while set.contains(nextConsecutiveNum) {
                    nextConsecutiveNum += 1
                    currentMaxLenght += 1
                }
                
                maxLenght = max(maxLenght, currentMaxLenght)
            }
            
            return maxLenght
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
