//
//  RedistributeCharactersToMakeAllStringsEqual.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 30.12.2023.
//

import Foundation

class RedistributeCharactersToMakeAllStringsEqual {
    class Solution {
        func makeEqual(_ words: [String]) -> Bool {
            var charsAndCount: [Character: Int] = [:]
            
            for i in 0 ..< words.count {
                let word = words[i]
                for char in word {
                    if let count = charsAndCount[char] {
                        charsAndCount[char] = count + 1
                    } else {
                        charsAndCount[char] = 1
                    }
                }
            }
            
            for key in charsAndCount.keys {
                if let count = charsAndCount[key], count % words.count != 0 {
                    return false
                }
            }
            
            return true
        }
    }
}
