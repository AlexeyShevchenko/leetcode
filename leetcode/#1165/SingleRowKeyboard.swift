//
//  SingleRowKeyboard.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.01.2024.
//

import Foundation

class SingleRowKeyboard {
    class Solution {
        func calculateTime(_ keyboard: String, _ word: String) -> Int {
            var charAndIndex: [Character: Int] = [:]
            for i in 0 ..< keyboard.count {
                let index = keyboard.index(keyboard.startIndex, offsetBy: i)
                let char = keyboard[index]
                charAndIndex[char] = i
            }
            
            var prev = 0
            var sum = 0
            for char in word {
                guard let index = charAndIndex[char] else { continue }
                sum += abs(index - prev)
                prev = index
            }
            
            return sum
        }
    }
}
