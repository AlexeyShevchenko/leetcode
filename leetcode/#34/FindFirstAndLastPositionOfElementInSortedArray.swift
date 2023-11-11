//
//  FindFirstAndLastPositionOfElementInSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.11.2023.
//

import Foundation

class FindFirstAndLastPositionOfElementInSortedArray {
    class Solution {
        func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
            var left = 0
            var right = nums.count - 1
            var leftIndex = -1
            var rightIndex = -1
            
            while left <= right {
                if leftIndex == -1 {
                    let leftValue = nums[left]
                    if leftValue == target {
                        leftIndex = left
                    } else {
                        left += 1
                    }
                }

                if rightIndex == -1 {
                    let rightValue = nums[right]
                    if rightValue == target {
                        rightIndex = right
                    } else {
                        right -= 1
                    }
                }
                
                if leftIndex != -1, rightIndex != -1 {
                    return [leftIndex, rightIndex]
                }
            }
            
            return [-1, -1]
        }
    }
}
// Time complexity: O(logn)
// Space complexity: O(1)
