//
//  Search2dMatrix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.05.2021.
//

import Foundation

class Search2dMatrix {
    class Solution {
        func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
            for m in 0..<matrix.count {
                for n in 0..<matrix[m].count {
                    let cell = matrix[m][n]
                    if cell == target { return true }
                }
            }
            return false
        }
    }
}
