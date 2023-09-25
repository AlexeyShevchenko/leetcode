//
//  NthTribonacciNumber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.09.2023.
//

import Foundation

class NthTribonacciNumber {
    class Solution {
        func tribonacci(_ n: Int) -> Int {
            var t0 = 0
            var t1 = 1
            var t2 = 1
            
            if n == 0 {
                return 0
            }
            if n == 1 || n == 2 {
                return 1
            }
            
            var res = 0
            for i in 3 ... n {
                res = t0 + t1 + t2
                t0 = t1
                t1 = t2
                t2 = res
            }
            
            return res
        }
    }
}

// Time compexity: O(n)
// Space complexity: O(1)
