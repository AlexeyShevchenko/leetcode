//
//  LargestSubstringBetweenTwoEqualCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 31.12.2023.
//

import Foundation

class LargestSubstringBetweenTwoEqualCharacters {
    class Solution {
        func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
            var res = -1
            var charsAndIndexs: [String.Element: [Int]] = [:]

            for (currentIndex, char) in s.enumerated() {
                if let indexs = charsAndIndexs[char], let charIndex = indexs.first {
                    let currentDistance = currentIndex - charIndex - 1
                    res = max(res, currentDistance)
                } else {
                    charsAndIndexs[char] = [currentIndex]
                }
            }
            
            return res
        }
    }
}
