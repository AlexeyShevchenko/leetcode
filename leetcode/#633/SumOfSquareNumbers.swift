//
//  SumOfSquareNumbers.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.11.2023.
//

import Foundation

class SumOfSquareNumbers {
    class Solution {
        func judgeSquareSum(_ c: Int) -> Bool {
            var left = 0
            var right: Int = .init(sqrt(.init(c)))
            
            while left <= right {
                let sum = left * left + right * right
                if sum < c {
                    left += 1
                } else if sum > c {
                    right -= 1
                } else {
                    return true
                }
            }

            return false
        }
    }
}
// Time complexity: O(sqrt(n))
// Space complexity: O(1)
