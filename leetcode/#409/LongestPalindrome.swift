//
//  LongestPalindrome.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.06.2024.
//

import Foundation

class LongestPalindrome {
    class Solution {
        func longestPalindrome(_ s: String) -> Int {
            var charAndCount: [Character: Int] = [:]
            
            for char in s {
                if let count = charAndCount[char] {
                    charAndCount[char] = 1 + count
                } else {
                    charAndCount[char] = 1
                }
            }
            
            var result = 0
            var hasOddCount = false
            
            for key in charAndCount.keys {
                guard let count = charAndCount[key] else { continue }
                // even
                if count % 2 == 0 {
                    result += count
                } else {
                    // odd
                    let maxEven = count - 1
                    result += maxEven
                    hasOddCount = true
                }
            }
            
            return hasOddCount ? result + 1 : result
        }
    }
}
