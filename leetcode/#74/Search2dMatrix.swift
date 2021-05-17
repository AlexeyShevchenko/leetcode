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
            var array = [Int]()
            for row in matrix {
                array = array + row
            }
            return binarySearch(in: array, target: target)
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
