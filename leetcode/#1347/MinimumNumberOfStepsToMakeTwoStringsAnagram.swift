//
//  MinimumNumberOfStepsToMakeTwoStringsAnagram.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.01.2024.
//

import Foundation

class MinimumNumberOfStepsToMakeTwoStringsAnagram {
    class Solution {
        func minSteps(_ s: String, _ t: String) -> Int {
            var sCharAndCount: [Character: Int] = [:]
            for char in s {
                if let count = sCharAndCount[char] {
                    sCharAndCount[char] = count + 1
                } else {
                    sCharAndCount[char] = 1
                }
            }
            
            var res = 0
            
            for char in t {
                if let count = sCharAndCount[char], count > 0 {
                    sCharAndCount[char] = count - 1
                } else {
                    res += 1
                }
            }
            
            return res
        }
    }
}
