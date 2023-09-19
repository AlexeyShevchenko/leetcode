//
//  RotateImage.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.09.2023.
//

import Foundation

class RotateImage {
    class Solution {
        func rotate(_ matrix: inout [[Int]]) {
            let n = matrix.count
        
            // transponse matrix
            for i in 0 ..< n {
                for j in i ..< n {
                    let temp = matrix[i][j]
                    matrix[i][j] = matrix[j][i]
                    matrix[j][i] = temp
                }
            }

            // swap horizontally
            for i in 0 ..< n {
                for j in 0 ..< (n / 2) {
                    let temp = matrix[i][j]
                    matrix[i][j] = matrix[i][n - 1 - j]
                    matrix[i][n - 1 - j] = temp
                }
            }
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(1)
