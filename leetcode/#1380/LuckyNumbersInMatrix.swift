//
//  LuckyNumbersInMatrix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 20.08.2024.
//

import Foundation

class LuckyNumbersInMatrix {
    class Solution {
        func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
            var rowMins: [Int] = []
            var columnMaxs: [Int] = []
            var result: [Int] = []
            
            for r in 0 ..< matrix.count {
                var m: Int = .max
                for c in 0 ..< matrix[0].count {
                    let num = matrix[r][c]
                    m = min(m, num)
                }
                rowMins.append(m)
            }
            
            for c in 0 ..< matrix[0].count {
                var m: Int = .min
                for r in 0 ..< matrix.count {
                    let num = matrix[r][c]
                    m = max(m, num)
                }
                columnMaxs.append(m)
            }
            
            for r in 0 ..< matrix.count {
                for c in 0 ..< matrix[0].count {
                    let num = matrix[r][c]
                    if num == rowMins[r], num == columnMaxs[c] {
                        result.append(num)
                    }
                }
            }
            
            return result
        }
    }
}
