//
//  FindFirstPalindromicStringInTheArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class FindFirstPalindromicStringInTheArray {
    class Solution {
        func firstPalindrome(_ words: [String]) -> String {
            for i in 0 ..< words.count {
                let word = words[i]
                if isPalindromic(word) {
                    return word
                }
            }

            return ""
        }
        
        private func isPalindromic(_ word: String) -> Bool {
            let word: Array = .init(word)
            var startIndex = 0
            var endIndex = word.count - 1
            
            while startIndex < endIndex {
                if word[startIndex] != word[endIndex] {
                    return false
                }
                
                startIndex += 1
                endIndex -= 1
            }
            
            return true
        }
    }
}
