//
//  LongestCommonSubsequence.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.08.2023.
//

import Foundation

class LongestCommonSubsequence {
    class Solution {
        func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
            let array1 = Array(text1)
            let array2 = Array(text2)
            var matrix: [[Int]] = Array(
                repeating: Array(
                    repeating: 0,
                    count: array1.count + 1
                ),
                count: array2.count + 1
            )
            var longestSubsequenceLenght = 0
            
            for i in 0 ..< array1.count {
                for j in 0 ..< array2.count {
                    let currentLenght = array1[i] == array2[j] ? (1 + matrix[j][i]) : max(matrix[j][i + 1], matrix[j + 1][i])
                    matrix[j + 1][i + 1] = currentLenght
                    longestSubsequenceLenght = max(longestSubsequenceLenght, currentLenght)
                }
            }
            
            return longestSubsequenceLenght
        }
    }
}
