//
//  VerifyingAnAlienDictionary.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.03.2021.
//

import Foundation

class VerifyingAnAlienDictionary {
    class Solution {

        func isAlienSorted(_ words: [String], _ order: String) -> Bool {
            var dict = [String.Element: Int]()
            for (index, char) in order.enumerated() {
                dict[char] = index
            }
            for i in 0...words.count - 2 {
                let word1 = words[i]
                let word2 = words[i + 1]
                if !ordered(word1, word2, dict) {
                    return false
                }
            }
            return true
        }

        private func ordered(_ word1: String, _ word2: String, _ dict: [String.Element: Int]) -> Bool {
            let minLength = min(word1.count, word2.count)
            for i in 0...minLength - 1 {
                let char1 = Array(word1)[i]
                let char2 = Array(word2)[i]
                if char1 == char2 { continue }
                let index1 = dict[char1] ?? .min
                let index2 = dict[char2] ?? .min
                // на этом шаге если буква1 идет раньше буквы2, то значит слова идут по порядку и дальше итерейтить нет смысла
                // или же если буква2 идет раньше буквы1, то значит порядок нарушен
                return index1 < index2
            }
            let length1 = word1.count
            let length2 = word2.count
            return length1 <= length2
        }
    }
}
