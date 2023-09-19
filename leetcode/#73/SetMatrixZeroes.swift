//
//  SetMatrixZeroes.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.09.2023.
//

import Foundation

class SetMatrixZeroes {
    class Solution {
        func setZeroes(_ matrix: inout [[Int]]) {
            // save index of rows and columns which contains 0
            var rowIndexsContainsZero: Set<Int> = .init()
            var columnIndexsContainsZero: Set<Int> = .init()
            
            for r in 0 ..< matrix.count {
                for c in 0 ..< matrix[0].count {
                    if matrix[r][c] == 0 {
                        rowIndexsContainsZero.insert(r)
                        columnIndexsContainsZero.insert(c)
                    }
                }
            }
            
            // go throught matrix and update cell
            for r in 0 ..< matrix.count {
                for c in 0 ..< matrix[0].count {
                    if rowIndexsContainsZero.contains(r) || columnIndexsContainsZero.contains(c) {
                        matrix[r][c] = 0
                    }
                }
            }
        }
    }
}

// Time compexity: O(m * n)
// Space complexity: O(m + n)
