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
        
        func calculate(_ s: String) -> Int {
            let stack = setWithNoWhitespaceAndBracket(s)
            let stack1 = setWithNoDoubleSubtractionSign(stack)
            var index = 0
            var res = 0
            
            while index < stack1.count {
                let char = stack1[index]
                
                if digits.contains(char), let digit = digit(stack1, &index) {
                    res = digit
                } else if operations.contains(char) {
                    index += 1
                    if let nextDigit = digit(stack1, &index) {
                        if char == "+" {
                            res = res + nextDigit
                        } else if char == "-" {
                            res = res - nextDigit
                        }
                    }
                } else {
                    index += 1
                }
            }
            
            return res
        }
        
        private func setWithNoWhitespaceAndBracket(_ s: String) -> [Character] {
            var stack: [Character] = []
            for i in 0 ..< s.count {
                let index = s.index(s.startIndex, offsetBy: i)
                let char = s[index]
                if digits.contains(char) || operations.contains(char) {
                    stack.append(char)
                }
            }
            
            if stack.first == "-" {
                stack.insert("0", at: 0)
            }
            
            return stack
        }
        
        private func setWithNoDoubleSubtractionSign(_ stack: [Character]) -> [Character] {
            var resStack: [Character] = []
            var stackIndex = 0
            
            while stackIndex < stack.count {
                let char = stack[stackIndex]
                if digits.contains(char) {
                    resStack.append(char)
                    stackIndex += 1
                } else if operations.contains(char) {
                    if char == "+" {
                        resStack.append(char)
                        stackIndex += 1
                        continue
                    }
                    
                    let nextIndex = stackIndex + 1
                    if nextIndex < stack.count {
                        let nextChar = stack[nextIndex]
                        if nextChar == "-" {
                            resStack.append("+")
                            stackIndex = nextIndex + 1
                        } else {
                            resStack.append(char)
                            stackIndex += 1
                        }
                    } else {
                        stackIndex += 1
                    }
                }
            }
            
            return resStack
        }
        
        private func digit(_ chars: [Character], _ index: inout Int) -> Int? {
            let char = chars[index]
            var digitAsString = "\(char)"
            
            var updatedIndex = index + 1
            for j in (index + 1) ..< chars.count {
                updatedIndex = j
                let nextChar = chars[j]
                if digits.contains(nextChar) {
                    digitAsString.append("\(nextChar)")
                } else {
                    break
                }
            }
            
            if updatedIndex < chars.count {
                let nextChar = chars[updatedIndex]
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
    }
}
