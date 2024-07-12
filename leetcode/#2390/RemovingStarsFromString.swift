//
//  RemovingStarsFromString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.07.2024.
//

import Foundation

class RemovingStarsFromString {
    class Solution {
        func removeStars(_ s: String) -> String {
            let star: Character = .init("*")
            var stack: [Character] = []
            
            for char in s {
                switch char {
                case star:
                    _ = stack.popLast()
                default:
                    stack.append(char)
                }
            }
            
            return .init(stack)
        }
    }
}
