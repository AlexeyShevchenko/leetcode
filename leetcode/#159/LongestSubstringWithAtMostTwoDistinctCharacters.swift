//
//  LongestSubstringWithAtMostTwoDistinctCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 23.12.2023.
//

import Foundation

class LongestSubstringWithAtMostTwoDistinctCharacters {
    class Solution {
        func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
            var s: Array = .init(s)
            var res: Int = .min
            var left = 0
            var right = 0
            var charAndIndex: [String.Element: Int] = [:]
            let maxDistincts = 2
            
            while right < s.count {
                let currentChar = s[right]
                charAndIndex[currentChar] = right
                
                if charAndIndex.count == (maxDistincts + 1) {
                    var charToRemove: String.Element = .init("-")
                    var lessIndex: Int = .max
                    for char in charAndIndex.keys {
                        guard let index = charAndIndex[char] else { continue }
                        if index < lessIndex {
                            lessIndex = index
                            charToRemove = char
                        }
                    }
                    charAndIndex.removeValue(forKey: charToRemove)
                    left = lessIndex + 1
                }
                
                res = max(res, right - left + 1)
                right += 1
            }
            
            return res
        }
    }
}
