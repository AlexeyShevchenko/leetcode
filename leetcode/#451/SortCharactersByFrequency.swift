//
//  SortCharactersByFrequency.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 07.02.2024.
//

import Foundation

class SortCharactersByFrequency {
    class Solution {
        func frequencySort(_ s: String) -> String {
            var charAndFrequency: [Character: Int] = [:]
            
            for char in s {
                if let frequency = charAndFrequency[char] {
                    charAndFrequency[char] = frequency + 1
                } else {
                    charAndFrequency[char] = 1
                }
            }
            
            let sorted = charAndFrequency.sorted { $0.value > $1.value }
            
            var res = ""
            for i in 0 ..< sorted.count {
                let element = sorted[i]

                for i in 0 ..< element.value {
                    res += .init(element.key)
                }
            }
            
            return res
        }
    }
}
