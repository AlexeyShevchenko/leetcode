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
            if matrix.isEmpty || matrix[0].isEmpty { return false }

            let rows = matrix.count
            let columns = matrix[0].count
            var left = 0
            var right = rows * columns - 1

            while left <= right {
                let middle = left + (right - left) / 2
                let valueAtMiddle = matrix[middle / columns][middle % columns]
                if valueAtMiddle == target { return true }
                else if valueAtMiddle < target {
                    left = middle + 1
                } else {
                    right = middle - 1
                }
            }

            return false
        }
    }
}
