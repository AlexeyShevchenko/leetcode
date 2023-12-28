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
            var windowWidth = 0
            let wordsCount = words.count
            for i in 0 ..< wordsCount {
                let word = words[i]
                windowWidth += word.count
            }
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
                let charsInWindow = Array(sChars[startIndex...endIndex])
                
                var copyWordsAndCount = wordsAndCount
                for i in 0 ..< wordsCount {
                    let startIndex = i * wordLength
                    let endIndex = startIndex + wordLength - 1
                    let wordInWindow = Array(charsInWindow[startIndex...endIndex]).joined()
                    
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
