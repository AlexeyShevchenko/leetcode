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
                if let val = dict[element] {
                    dict[element] = val + 1
                } else {
                    dict[element] = 0
                }
            }
            for (index, element) in s.enumerated() {
                if let val = dict[element], val == 0 {
                    return index
                }
            }
            return -1
        }
    }
}
