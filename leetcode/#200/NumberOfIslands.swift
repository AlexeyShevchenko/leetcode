//
//  NumberOfIslands.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.05.2021.
//

import Foundation

class NumberOfIslands {
    class Solution {
        private let _1: Character = "1"
        private let _0: Character = "0"

        func numIslands(_ grid: [[Character]]) -> Int {
            var copy = grid
            var count = 0
            for i in 0..<copy.count {
                for j in 0..<copy[i].count {
                    let cell = copy[i][j]
                    if cell == _1 {
                        count += 1
                        scan(&copy, i, j)
                    }
                }
            }
            return count
        }

        private func scan(_ grid: inout [[Character]], _ row: Int, _ column: Int) {
            if grid.isEmpty
                || row < 0
                || column < 0
                || row >= grid.count
                || column >= grid[row].count
                || grid[row][column] == _0 { return }
            grid[row][column] = _0

            scan(&grid, row, column - 1)
            scan(&grid, row - 1, column)
            scan(&grid, row, column + 1)
            scan(&grid, row + 1, column)
        }
    }
}
