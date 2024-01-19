//
//  MinimumFallingPathSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.01.2024.
//

import Foundation

class MinimumFallingPathSum {
    class Solution {
        func minFallingPathSum(_ matrix: [[Int]]) -> Int {
            var matrix = matrix
            let n = matrix.count
            
            for row in 1 ..< n {
                for column in 0 ..< n {
                    let left = column > 0 ? matrix[row - 1][column - 1] : .max
                    let mid =  matrix[row - 1][column]
                    let right = column < (n - 1) ? matrix[row - 1][column + 1] : .max
                    let min: Int = min(left, mid, right)
                    matrix[row][column] = matrix[row][column] + min
                }
            }
            
            let lastRow = matrix[n - 1]
            let minSumPath = lastRow.min() ?? 0
            
            return minSumPath
        }
    }
}
