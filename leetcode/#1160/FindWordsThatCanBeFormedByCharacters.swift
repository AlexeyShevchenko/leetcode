//
//  FindWordsThatCanBeFormedByCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.12.2023.
//

import Foundation

class FindWordsThatCanBeFormedByCharacters {
    class Solution {
        func countCharacters(_ words: [String], _ chars: String) -> Int {
            var sum = 0
            
            for i in 0 ..< words.count {
                let w = words[i]
                if word(w, canBeFormedFrom: chars) {
                    sum += w.count
                }
            }
            
            return sum
        }
        
        private func word(_ word: String, canBeFormedFrom chars: String) -> Bool {
            var dict: [Character: Int] = [:]
            
            for char in chars {
                if let c = dict[char] {
                    dict[char] = c + 1
                } else {
                    dict[char] = 1
                }
            }

            for char in word {
                guard let count = dict[char], count > 0 else { return false }
                dict[char] = count - 1
            }
            
            return true
        }
    }
}
