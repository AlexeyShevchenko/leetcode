//
//  PascalsTriangleII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.09.2023.
//

import Foundation

class PascalsTriangleII {
    class Solution {
        func getRow(_ rowIndex: Int) -> [Int] {
            if rowIndex == 0 {
                return [1]
            }
            
            if rowIndex == 1 {
                return [1, 1]
            }
            
            var arr: [[Int]] = []
            for i in 0 ... rowIndex {
                arr.append(Array(repeating: 1, count: i + 1))
            }
            
            for i in 2 ... rowIndex {
                for j in 1 ..< i {
                    arr[i][j] = arr[i - 1][j] + arr[i - 1][j - 1]
                }
            }
            
            return arr[rowIndex]
        }
    }
}

// Time comlexity: O(n * n)
// Space complexity: O(n * n)
