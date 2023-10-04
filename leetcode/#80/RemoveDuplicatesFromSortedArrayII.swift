//
//  RemoveDuplicatesFromSortedArrayII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.10.2023.
//

import Foundation

class RemoveDuplicatesFromSortedArrayII {
    class Solution {
        func removeDuplicates(_ nums: inout [Int]) -> Int {
            var left = 0
            var right = 0
            
            while right < nums.count {
                var count = 1
                while (right + 1) < nums.count, nums[right] == nums[right + 1] {
                    count += 1
                    right += 1
                }
                
                count = min(count, 2)
                
                for _ in 0 ..< count {
                    nums[left] = nums[right]
                    left += 1
                }
                
                right += 1
            }
            
            return left
        }
    }
}
