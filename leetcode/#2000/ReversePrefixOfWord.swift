//
//  ReversePrefixOfWord.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class ReversePrefixOfWord {
    class Solution {
        func reversePrefix(_ word: String, _ ch: Character) -> String {
            var wordArray: Array = .init(word)
            var chIndex = -1
            var ch: String.Element = .init("\(ch)")

            for i in 0 ..< wordArray.count {
                let currentElement = wordArray[i]
                if currentElement == ch {
                    chIndex = i
                    break
                }
            }
            
            if chIndex == -1 {
                return word
            } else {
                var startIndex = 0
                var endIndex = chIndex
                
                while startIndex < endIndex {
                    let temp = wordArray[startIndex]
                    wordArray[startIndex] = wordArray[endIndex]
                    wordArray[endIndex] = temp
                    startIndex += 1
                    endIndex -= 1
                }
                
                return String(wordArray)
            }
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
