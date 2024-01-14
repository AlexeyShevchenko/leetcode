//
//  DetermineIfTwoStringsAreClose.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.01.2024.
//

import Foundation

class DetermineIfTwoStringsAreClose {
    class Solution {
        func closeStrings(_ word1: String, _ word2: String) -> Bool {
            var word1Dict: [Character: Int] = [:]
            for char in word1 {
                if let frequency = word1Dict[char] {
                    word1Dict[char] = frequency + 1
                } else {
                    word1Dict[char] = 1
                }
            }
            
            var word2Dict: [Character: Int] = [:]
            for char in word2 {
                if let frequency = word2Dict[char] {
                    word2Dict[char] = frequency + 1
                } else {
                    word2Dict[char] = 1
                }
            }
            
            var word1Chars: Set<Character> = .init(word1Dict.keys)
            var word2Chars: Set<Character> = .init(word2Dict.keys)
            guard word1Chars.count == word2Chars.count else { return false }
            while let char = word1Chars.popFirst() {
                word2Chars.remove(char)
            }
            guard word1Chars.isEmpty, word2Chars.isEmpty else { return false }
            
            var word1Frequencies: [Int] = .init(word1Dict.values)
            word1Frequencies.sort()
            var word2Frequencies: [Int] = .init(word2Dict.values)
            word2Frequencies.sort()
            
            return word1Frequencies == word2Frequencies
        }
    }
}
