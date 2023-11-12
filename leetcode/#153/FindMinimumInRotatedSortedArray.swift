//
//  FindMinimumInRotatedSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.11.2023.
//

import Foundation

class FindMinimumInRotatedSortedArray {
    class Solution {
        func findMin(_ nums: [Int]) -> Int {
            var left = 0
            var right = nums.count - 1
            
            while left < right {
                let mid = left + (right - left) / 2
                
                if nums[mid] > nums[right] {
                    left = mid + 1
                } else {
                    right = mid
                }
            }
            
            return nums[left]
        }
    }
}
// Time complexity: O(logn)
// Space complexity: O(1)
