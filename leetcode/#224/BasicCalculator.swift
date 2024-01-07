//
//  BasicCalculator.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 07.01.2024.
//

import Foundation

class BasicCalculator {
    class Solution {
        private let digits: Set<Character> = .init("0123456789".compactMap({ .init($0) }))
        private let operations: Set<Character> = .init("+-".compactMap({ .init($0) }))
        
        func digit(_ s: String, _ index: inout Int) -> Int? {
            let charIndex = s.index(s.startIndex, offsetBy: index)
            let char = s[charIndex]
            var digitAsString = "\(char)"
            
            var updatedIndex = index + 1
            for j in (index + 1) ..< s.count {
                updatedIndex = j
                let k = s.index(s.startIndex, offsetBy: j)
                let nextChar = s[k]
                if digits.contains(nextChar) {
                    digitAsString.append("\(nextChar)")
                } else {
                    break
                }
            }
            
            if updatedIndex < s.count {
                let nextIndex = s.index(s.startIndex, offsetBy: updatedIndex)
                let nextChar = s[nextIndex]
                if operations.contains(nextChar) {
                    index = updatedIndex
                } else {
                    index = updatedIndex + 1
                }
            } else {
                index = updatedIndex
            }
            
            return .init(digitAsString)
        }
        
        func calculate(_ s: String) -> Int {
            var index = 0
            var res = 0
            
            while index < s.count {
                let i = s.index(s.startIndex, offsetBy: index)
                let char = s[i]

                if digits.contains(char),
                   let d = digit(s, &index) {
                    res = d
                } else if operations.contains(char) {
                    for j in index + 1 ..< s.count {
                        let k = s.index(s.startIndex, offsetBy: j)
                        let nextChar = s[k]
                        
                        if let nextDigit: Int = .init("\(nextChar)") {
                            if char == "+" {
                                res = res + nextDigit
                            } else if char == "-" {
                                res = res - nextDigit
                            }
                            index = j + 1
                            break
                        }
                    }
                } else {
                    index += 1
                }
            }
            
            return res
        }
    }
}
