//
//  TransposeMatrix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.12.2023.
//

import Foundation

class TransposeMatrix {
    class Solution {
        func transpose(_ matrix: [[Int]]) -> [[Int]] {
            let rows = matrix.count
            let columns = matrix[0].count
            
            var res: [[Int]] = .init(
                repeating: .init(
                    repeating: 0,
                    count: rows
                ),
                count: columns
            )
            
            for i in 0 ..< matrix.count {
                let row = matrix[i]
                for j in 0 ..< row.count {
                    res[j][i] = row[j]
                }
            }
            
            return res
        }
    }
}
