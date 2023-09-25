//
//  PascalsTriangle.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.09.2023.
//

import Foundation

class PascalsTriangle {
    class Solution {
        func generate(_ numRows: Int) -> [[Int]] {
            if numRows == 1 {
                return [[1]]
            }
            if numRows == 2 {
                return [[1], [1, 1]]
            }
            
            var res: [[Int]] = []
            for i in 0 ..< numRows {
                res.append(Array(repeating: 1, count: i + 1))
            }
            
            for i in 2 ..< numRows {
                for j in 1 ..< i {
                    res[i][j] = res[i - 1][j] + res[i - 1][j - 1]
                }
            }
            
            return res
        }
    }
}

// Time complexity: O(n * n)
// Space complexity: O(n * n)
