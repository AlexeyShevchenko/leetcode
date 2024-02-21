//
//  LongestRepeatingCharacterReplacement.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.02.2024.
//

import Foundation

class LongestRepeatingCharacterReplacement {
    class Solution {
        func characterReplacement(_ s: String, _ k: Int) -> Int {
            var s = Array(s)
            var res = 0
            var charAndFrequency: [String.Element: Int] = [:]
            var left = 0
            
            for right in 0 ..< s.count {
                let char = s[right]
                
                if let frequency = charAndFrequency[char] {
                    charAndFrequency[char] = 1 + frequency
                } else {
                    charAndFrequency[char] = 1
                }
                
                while (right - left + 1) - (charAndFrequency.values.max() ?? 0) > k {
                    let leftChar = s[left]
                    
                    if let frequency = charAndFrequency[leftChar] {
                        charAndFrequency[leftChar] = frequency - 1
                    }
                    
                    left += 1
                }
                
                res = max(res, right - left + 1)
            }
            
            return res
        }
    }
}
