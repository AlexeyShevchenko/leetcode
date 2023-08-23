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
                let ar1Char = array1[i]
                
                for j in 0 ..< array2.count {
                    let ar2Chat = array2[j]
                    
                    if ar1Char == ar2Chat {
                        matrix[j + 1][i + 1] = 1 + matrix[j][i]
                    } else {
                        matrix[j + 1][i + 1] = max(
                            matrix[j][i + 1],
                            matrix[j + 1][i]
                        )
                    }
                    
                    longestSubsequenceLenght = max(longestSubsequenceLenght, matrix[j + 1][i + 1])
                }
            }

            return longestSubsequenceLenght
        }
    }
}
