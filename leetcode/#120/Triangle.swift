//
//  Triangle.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.10.2023.
//

import Foundation

class Triangle {
    class Solution {
        func minimumTotal(_ triangle: [[Int]]) -> Int {
            var dp = triangle
            
            for row in (0 ..< triangle.count - 1).reversed() {
                for column in 0 ... row {
                    dp[row][column] += min(dp[row + 1][column], dp[row + 1][column + 1])
                }
            }
            
            return dp[0][0]
        }
    }
}
// Time complexity: O(n^2)
// Space compexity: O(n)
