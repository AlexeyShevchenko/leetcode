//
//  BinarySearch.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.05.2021.
//

class BinarySearch {
    class Solution {
        func search(_ nums: [Int], _ target: Int) -> Int {
            var left = 0
            var right = nums.count - 1
            while left <= right {
                let middle = (left + right) / 2
                let numAtMiddle = nums[middle]
                if numAtMiddle == target {
                    return middle
                } else if numAtMiddle < target {
                    left = middle + 1
                } else {
                    right = middle - 1
                }
            }
            return -1
        }
    }
}

