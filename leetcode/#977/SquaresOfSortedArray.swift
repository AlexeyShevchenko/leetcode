//
//  SquaresOfSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.04.2021.
//

import Foundation

class SquaresOfSortedArray {
    class Solution {
        func sortedSquares(_ nums: [Int]) -> [Int] {
            var leftIndex = 0
            var rightIndex = nums.count - 1
            var result = [Int](repeatElement(0, count: nums.count))
            for i in stride(from: nums.count - 1, through: 0, by: -1) {
                let leftValue = nums[leftIndex]
                let rightValue = nums[rightIndex]
                var num = 0
                if abs(leftValue) < abs(rightValue) {
                    num = rightValue
                    rightIndex = rightIndex - 1
                } else {
                    num = leftValue
                    leftIndex = leftIndex + 1
                }
                result[i] = num * num
            }
            return result
        }
    }
}
// test commit
