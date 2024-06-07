//
//  ReplaceWords.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 07.06.2024.
//

import Foundation

class ReplaceWords {
    class Solution {
        func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
            var result: [String] = []
            let set = Set(dictionary)
            let words = sentence.split(separator: " ")
            
            for word in words {
                var prefix = ""
                var found = false
                
                for char in word {
                    prefix.append("\(char)")
                    if set.contains(prefix) {
                        result.append(prefix)
                        found = true
                        break
                    }
                }
                
                if !found {
                    result.append(String(word))
                }
            }
            
            return result.joined(separator: " ")
        }
    }
}
