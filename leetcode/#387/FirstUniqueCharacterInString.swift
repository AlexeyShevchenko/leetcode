//
//  FirstUniqueCharacterInString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.04.2021.
//

import Foundation

class FirstUniqueCharacterInString {
    class Solution {
        func firstUniqChar(_ s: String) -> Int {
            var dict = [String.Element: Int]()
            for (_, element) in s.enumerated() {
                guard let val = dict[element] else { dict[element] = 0; continue }
                dict[element] = val + 1
            }
            for (index, element) in s.enumerated() {
                guard let value = dict[element], value == 0 else { continue }
                return index
            }
            return -1
        }
    }
}
