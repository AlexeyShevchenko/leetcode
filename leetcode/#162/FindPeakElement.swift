//
//  FindPeakElement.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.11.2023.
//

import Foundation

class FindPeakElement {
    class Solution {
        func findPeakElement(_ nums: [Int]) -> Int {
            var left = 0
            var right = nums.count - 1
            
            while left <= right {
                let mid = left + (right - left) / 2
                
                if mid > 0, nums[mid] < nums[mid - 1] {
                    right = mid - 1
                } else if mid < nums.count - 1, nums[mid] < nums[mid + 1] {
                    left = mid + 1
                } else {
                    return mid
                }
            }
            
            return 0
        }
    }
}
