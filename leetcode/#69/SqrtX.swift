//
//  SqrtX.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.11.2023.
//

import Foundation

class SqrtX {
    class Solution {
        func mySqrt(_ x: Int) -> Int {
            var left = 0
            var right = x
            
            while left < right {
                let middle = (left + right + 1) / 2
                if (middle * middle) <= x {
                    left = middle
                } else {
                    right = middle - 1
                }
            }
            
            return left
        }
    }
}
