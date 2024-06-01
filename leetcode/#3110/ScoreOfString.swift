//
//  ScoreOfString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.06.2024.
//

import Foundation

class ScoreOfString {
    class Solution {
        func scoreOfString(_ s: String) -> Int {
            var result = 0
            guard s.count > 1 else { return result }
            let startIndex = s.startIndex
            
            for i in 1 ..< s.count {
                let prevCharIndex = s.index(startIndex, offsetBy: i - 1)
                let prevChar = s[prevCharIndex]
                guard let prevCharValue = prevChar.asciiValue else { continue }
                
                let currentCharIndex = s.index(startIndex, offsetBy: i)
                let currentChar = s[currentCharIndex]
                guard let currentCharValue = currentChar.asciiValue else { continue }
                
                let diff = abs(Int(prevCharValue) - Int(currentCharValue))
                result += diff
            }
            
            return result
        }
    }
}
