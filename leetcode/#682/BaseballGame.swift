//
//  BaseballGame.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.07.2024.
//

import Foundation

class BaseballGame {
    class Solution {
        func calPoints(_ operations: [String]) -> Int {
            var stack: [Int] = []
            
            for i in 0 ..< operations.count {
                let operation = operations[i]
                switch operation {
                case "+":
                    let lastIndex = stack.count - 1
                    guard lastIndex >= 0 else { continue }
                    let beforeLastIndex = lastIndex - 1
                    guard beforeLastIndex >= 0 else { continue }
                    let prev = stack[lastIndex]
                    let prevPrev = stack[beforeLastIndex]
                    let plusPreviousTwoScores = prev + prevPrev
                    stack.append(plusPreviousTwoScores)
                case "D":
                    let lastIndex = stack.count - 1
                    guard lastIndex >= 0 else { continue }
                    let prev = stack[lastIndex]
                    let doubleOfPrevious = prev * 2
                    stack.append(doubleOfPrevious)
                case "C":
                    _ = stack.removeLast()
                default:
                    guard let num: Int = .init(operation) else { continue }
                    stack.append(num)
                }
            }
            
            return stack.reduce(0, +)
        }
    }
}
