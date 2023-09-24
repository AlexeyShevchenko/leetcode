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
            
            var dict: [Int: Int] = [:]
            dict[0] = 0
            dict[1] = 1
            
            for i in 2 ... n {
                guard let prevPrev = dict[i - 2], let prev = dict[i - 1] else { continue }
                dict[i] = prevPrev + prev
            }
            
            return dict[n] ?? -1
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
