//
//  FibonacciNumber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.09.2023.
//

import Foundation

class FibonacciNumber {
    class Solution {
        func fib(_ n: Int) -> Int {
            if n < 2 { return n }
            
            var prevPrev = 0
            var prev = 1
            var result = 0
            
            for _ in 2 ... n {
                result = prevPrev + prev
                prevPrev = prev
                prev = result
            }
            
            return result
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(1)

