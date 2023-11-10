//
//  ValidPerfectSquare.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.11.2023.
//

import Foundation

class ValidPerfectSquare {
    class Solution {
        func isPerfectSquare(_ num: Int) -> Bool {
            var left = 0
            var right = num
            
            while left <= right {
                let middle = (left + right) / 2
                let square = middle * middle
                if square < num {
                    left = middle + 1
                } else if square > num {
                    right = middle - 1
                } else {
                    return true
                }
            }
            
            return false
        }
    }
}
// Time complexity: O(logn)
// Space complexity: O(1)
