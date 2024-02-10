//
//  PalindromicSubstrings.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.02.2024.
//

import Foundation

class PalindromicSubstrings {
    class Solution {
        func countSubstrings(_ s: String) -> Int {
            let s = Array(s)
            var res = 0
            
            for i in 0 ..< s.count {
                var left = i
                var right = i
                
                while left >= 0,
                      right < s.count,
                      s[left] == s[right] {
                    res += 1
                    left -= 1
                    right += 1
                }
                
                left = i
                right = left + 1
                
                while left >= 0,
                      right < s.count,
                      s[left] == s[right] {
                    res += 1
                    left -= 1
                    right += 1
                }
            }
            
            return res
        }
    }
}
