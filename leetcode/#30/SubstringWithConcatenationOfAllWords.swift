//
//  SubstringWithConcatenationOfAllWords.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.12.2023.
//

import Foundation

class SubstringWithConcatenationOfAllWords {
    class Solution {
        func findSubstring(_ s: String, _ words: [String]) -> [Int] {
            var res: [Int] = []
            guard !words.isEmpty else { return res }
            guard !s.isEmpty else { return res }
            
            let wordLength = words[0].count
            let sChars: [String] = s.compactMap({ .init($0) })
            let wordsCount = words.count
            let windowWidth = words.count * wordLength
            let windowShifts = sChars.count - windowWidth + 1

            var wordsAndCount: [String: Int] = [:]
            for i in 0 ..< wordsCount {
                let word = words[i]
                if let count = wordsAndCount[word] {
                    wordsAndCount[word] = count + 1
                } else {
                    wordsAndCount[word] = 1
                }
            }
            
            for windowShift in 0 ..< windowShifts {
                let startIndex = windowShift
                let endIndex = startIndex + windowWidth - 1
                var charsInWindow: [String] = []
                for i in startIndex ... endIndex {
                    charsInWindow.append(sChars[i])
                }
                
                var copyWordsAndCount = wordsAndCount
                for i in 0 ..< wordsCount {
                    let startIndex = i * wordLength
                    let endIndex = startIndex + wordLength - 1
                    var wordInWindow = ""
                    for char in startIndex ... endIndex {
                        wordInWindow.append(charsInWindow[char])
                    }
                    
                    if let count = copyWordsAndCount[wordInWindow] {
                        copyWordsAndCount[wordInWindow] = count - 1
                        if copyWordsAndCount[wordInWindow] == 0 {
                            _ = copyWordsAndCount.removeValue(forKey: wordInWindow)
                        }
                    } else {
                        break
                    }
                }
                
                if copyWordsAndCount.isEmpty {
                    res.append(startIndex)
                }
            }
            
            return res
        }
    }
}
