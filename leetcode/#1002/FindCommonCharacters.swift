//
//  FindCommonCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 05.06.2024.
//

import Foundation

class FindCommonCharacters {
    class Solution {
        func commonChars(_ words: [String]) -> [String] {
            let abc = Array("abcdefghijklmnopqrstuvwxyz").compactMap { "\($0)" }
            var result: [String] = []
            var dicts: [[String: Int]] = []
            
            for i in 0 ..< words.count {
                let word = words[i]
                var dict: [String: Int] = [:]
                
                for char in word {
                    let char = "\(char)"
                    if let count = dict[char] {
                        dict[char] = 1 + count
                    } else {
                        dict[char] = 1
                    }
                }
                
                dicts.append(dict)
            }
            
            for char in abc {
                var counts: [Int] = []
                
                for i in 0 ..< dicts.count {
                    let dict = dicts[i]
                    let count = dict[char]
                    if let count {
                        counts.append(count)
                    } else {
                        break
                    }
                }
                
                if counts.count == words.count,
                   let minCount = counts.min() {
                    for i in 0 ..< minCount {
                        result.append(char)
                    }
                }
            }
            
            return result
        }
    }
}
