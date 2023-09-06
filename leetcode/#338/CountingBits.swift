//
//  CountingBits.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.09.2023.
//

import Foundation

class CountingBits {
    class Solution {
        func countBits(_ n: Int) -> [Int] {
            var result: [Int] = Array(repeating: 0, count: n + 1)
            
            for i in 0 ... n {
                result[i] = result[i >> 1] + i & 1
            }
            
            return result
        }
    }
}
// Time complexity O(n)
// Space complexity O(n)
