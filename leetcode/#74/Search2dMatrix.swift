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
            if matrix.count < 1 { return false }
            if matrix.count == 1 {
                let row = matrix[0]
                return binarySearch(in: row, target: target)
            }

            var index = 0
            var nextIndex = 1

            while nextIndex < matrix.count {
                let firstElementInRow = matrix[index].first ?? 0
                let nextFirstElementInRow = matrix[nextIndex].first ?? 0

                if target >= firstElementInRow && target < nextFirstElementInRow {
                    let row = matrix[index]
                    return binarySearch(in: row, target: target)
                } else if target == nextFirstElementInRow {
                    return true
                }
                
                index += 1
                nextIndex += 1
            }

            return binarySearch(in: matrix[matrix.count - 1], target: target)
        }

        private func binarySearch(in row: [Int], target: Int) -> Bool {
            var left = 0
            var rigth = row.count - 1
            while left <= rigth {
                let middle = (left + rigth) / 2
                let numAtMiddle = row[middle]
                if target == numAtMiddle { return true }
                else if target < numAtMiddle { rigth = middle - 1 }
                else if target > numAtMiddle { left = middle + 1 }
            }
            return false
        }
    }
}
