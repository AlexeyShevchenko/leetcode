//
//  DetermineIfStringHalvesAreAlike.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.01.2024.
//

import Foundation

class DetermineIfStringHalvesAreAlike {
    class Solution {
        func halvesAreAlike(_ s: String) -> Bool {
            var leftPartVowelsCount = 0
            var rightPartVowelsCount = 0
            let vowels: Set<Character> = .init(["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"])

            var left = 0
            var right = s.count - 1
            
            while left < right {
                let leftIndex = s.index(s.startIndex, offsetBy: left)
                let leftChar = s[leftIndex]
                if vowels.contains(leftChar) {
                    leftPartVowelsCount += 1
                }
                
                let rightIndex = s.index(s.startIndex, offsetBy: right)
                let rightChar = s[rightIndex]
                if vowels.contains(rightChar) {
                    rightPartVowelsCount += 1
                }
                
                left += 1
                right -= 1
            }
            
            return leftPartVowelsCount == rightPartVowelsCount
        }
    }
}
