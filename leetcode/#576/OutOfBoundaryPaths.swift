//
//  OutOfBoundaryPaths.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.01.2024.
//

import Foundation

class OutOfBoundaryPaths {
    class Solution {
        func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
            let rows = m
            let columns = n
            let mod = 1000000007
            var dict: [String: Int] = [:]
            
            func dfs(
                _ row: Int,
                _ column: Int,
                _ remainingMove: Int
            ) -> Int {
                if row < 0 { return 1 }
                if row == rows { return 1 }
                if column < 0 { return 1 }
                if column == columns { return 1}
                if remainingMove == 0 { return 0 }
                
                let key = "\(row)-\(column)-\(remainingMove)"
                if let val = dict[key] { return val }
                
                let res = (
                    (
                        dfs(row + 1, column, remainingMove - 1) +
                        dfs(row - 1, column, remainingMove - 1)
                    ) % mod +
                    (
                        dfs(row, column + 1, remainingMove - 1) +
                        dfs(row, column - 1, remainingMove - 1)
                    ) % mod
                ) % mod
                dict[key] = res
                return res
            }
            
            return dfs(startRow, startColumn, maxMove)
        }
    }
}
