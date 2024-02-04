//
//  MinimumWindowSubstring.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.02.2024.
//

import Foundation

class MinimumWindowSubstring {
    class Solution {
        func minWindow(_ s: String, _ t: String) -> String {
            if t.isEmpty { return "" }
            
            var tCharAndCount: [Character: Int] = [:]
            for char in t {
                if let count = tCharAndCount[char] {
                    tCharAndCount[char] = count + 1
                } else {
                    tCharAndCount[char] = 1
                }
            }
            
            var have = 0
            let need = tCharAndCount.count
            var window: [Character: Int] = [:]
            var res: [Int] = []
            var resLenght: Int = .max
            var left = 0
            
            for right in 0 ..< s.count {
                let rightIndex = s.index(s.startIndex, offsetBy: right)
                let char = s[rightIndex]
               
                if let count = window[char] {
                    window[char] = count + 1
                } else {
                    window[char] = 1
                }
                
                if let tCount = tCharAndCount[char], tCount == window[char] {
                    have += 1
                }
                                  
                while have == need {
                    let windowSize = right - left + 1
                    if windowSize < resLenght {
                        res = [left, right]
                        resLenght = windowSize
                    }
                    
                    let leftIndex = s.index(s.startIndex, offsetBy: left)
                    let leftChar = s[leftIndex]
                    if let count = window[leftChar] {
                        window[leftChar] = count - 1
                    }
                    
                    if let tCount = tCharAndCount[leftChar],
                       let windowCount = window[leftChar],
                       tCount > windowCount {
                        have -= 1
                    }

                    left += 1
                }
            }
            
            guard res.count == 2 else { return "" }
            
            left = res[0]
            let right = res[1]
            let leftIndex = s.index(s.startIndex, offsetBy: left)
            let rightIndex = s.index(s.startIndex, offsetBy: right)
            
            return resLenght == .max ? "" : .init(s[leftIndex ... rightIndex])
        }
    }
}
