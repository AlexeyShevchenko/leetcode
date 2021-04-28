//
//  ValidAnagram.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.04.2021.
//

import Foundation

class ValidAnagram {
    class Solution {
        func isAnagram(_ s: String, _ t: String) -> Bool {
            var dict = [String.Element: Int]()

            for (_, element) in s.enumerated() {
                if let val = dict[element] {
                    dict[element] = val + 1
                } else {
                    dict[element] = 1
                }
            }

            for (_, element) in t.enumerated() {
                if let val = dict[element] {
                    if val > 1 {
                        dict[element] = val - 1
                    } else {
                        dict[element] = nil
                    }
                } else {
                    return false
                }
            }

            return dict.isEmpty
        }
    }
}
