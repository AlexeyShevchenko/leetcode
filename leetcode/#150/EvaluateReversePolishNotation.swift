//
//  EvaluateReversePolishNotation.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.01.2024.
//

import Foundation

class EvaluateReversePolishNotation {
    class Solution {
        func evalRPN(_ tokens: [String]) -> Int {
            let operations: Set<String> = .init("+-*/".compactMap({ .init($0) }))
            var stack: [Int] = []
            
            for i in 0 ..< tokens.count {
                let token = tokens[i]
                if let digit: Int = .init(token) {
                    stack.append(digit)
                } else if operations.contains(token),
                          let rightPart = stack.popLast(),
                          let leftPart = stack.popLast() {
                    var res = 0
                    if token == "+" {
                        res = leftPart + rightPart
                    } else if token == "-" {
                        res = leftPart - rightPart
                    } else if token == "*" {
                        res = leftPart * rightPart
                    } else if token == "/" {
                        res = leftPart / rightPart
                    }
                    stack.append(res)
                }
            }
            
            return stack.popLast() ?? 0
        }
    }
}
