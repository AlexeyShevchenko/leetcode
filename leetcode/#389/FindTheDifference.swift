//
//  FindTheDifference.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.09.2023.
//

import Foundation

class FindTheDifference {
    class Solution {
        func findTheDifference(_ s: String, _ t: String) -> Character {
            var dictT: [Character: Int] = [:]
            for char in t {
                if let val = dictT[char] {
                    dictT[char] = val + 1
                } else {
                    dictT[char] = 1
                }
            }
            
            for char in s {
                if let val = dictT[char] {
                    dictT[char] = val - 1
                }
            }
            
            for k in dictT.keys {
                if let val = dictT[k], val > 0 {
                    return k
                }
            }
            
            return .init("")
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
