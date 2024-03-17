//
//  LetterCombinationsOfPhoneNumber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.03.2024.
//

import Foundation

class LetterCombinationsOfPhoneNumber {
    class Solution {
        func letterCombinations(_ digits: String) -> [String] {
            var res: [String] = []
            guard !digits.isEmpty else { return res }
            
            var digitToChars: [Character: [Character]] = [
                .init("2"): ["a", "b", "c"],
                .init("3"): ["d", "e", "f"],
                .init("4"): ["g", "h", "i"],
                .init("5"): ["j", "k", "l"],
                .init("6"): ["m", "n", "o"],
                .init("7"): ["p", "q", "r", "s"],
                .init("8"): ["t", "u", "v"],
                .init("9"): ["w", "x", "y", "z"],
            ]
            
            func backtrack(_ index: Int, _ currentStr: String) {
                if currentStr.count == digits.count {
                    res.append(currentStr)
                    return
                }
                
                let sIndex = digits.index(digits.startIndex, offsetBy: index)
                let char = digits[sIndex]
                if let chars = digitToChars[char] {
                    for c in chars {
                        backtrack(index + 1, "\(currentStr)\(c)")
                    }
                }
            }
            
            backtrack(0, "")
            
            return res
        }
    }
}
