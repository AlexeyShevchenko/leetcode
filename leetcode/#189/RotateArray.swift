//
//  RotateArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.10.2023.
//

import Foundation

class RotateArray {
    class Solution {
        func rotate(_ nums: inout [Int], _ k: Int) {
            if nums.isEmpty { return }
            var k = k % nums.count
            var n = nums.count - 1
            rotate(&nums, 0, n)
            rotate(&nums, 0, k - 1)
            rotate(&nums, k, n)
        }
        
        private func rotate(_ nums: inout [Int], _ start: Int, _ end: Int) {
            var start = start
            var end = end
            while start < end {
                let temp = nums[start]
                nums[start] = nums[end]
                nums[end] = temp
                
                start += 1
                end -= 1
            }
        }
    }
}
