//
//  WordPattern.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.10.2023.
//

import Foundation

class WordPattern {
    class Solution {
        func wordPattern(_ pattern: String, _ s: String) -> Bool {
            let patternArray = Array(pattern)
            let sArray: [String] = s
                .split(separator: " ")
                .compactMap { .init($0) }
            
            if patternArray.count != sArray.count {
                return false
            }
            
            var mapPS: [String.Element: String] = [:]
            var mapSP: [String: String.Element] = [:]
            
            for i in 0 ..< patternArray.count {
                let char = patternArray[i]
                let sWord = sArray[i]
                
                if let val = mapPS[char], val != sWord {
                    return false
                }
                if let val = mapSP[sWord], val != char {
                    return false
                }
                
                mapPS[char] = sWord
                mapSP[sWord] = char
            }
            
            return true
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
