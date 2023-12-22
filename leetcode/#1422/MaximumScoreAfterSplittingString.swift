//
//  MaximumScoreAfterSplittingString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.12.2023.
//

import Foundation

class MaximumScoreAfterSplittingString {
    class Solution {
        func maxScore(_ s: String) -> Int {
            var s = Array(s)
            var ones = 0
            var zeros = 0
            var best: Int = .min
            
            for i in 0 ..< s.count - 1 {
                let el = s[i]
                if el == "1" {
                    ones += 1
                } else {
                    zeros += 1
                }
                best = max(best, zeros - ones)
            }
            
            if s[s.count - 1] == "1" {
                ones += 1
            }
            
            return best + ones
        }
    }
}
