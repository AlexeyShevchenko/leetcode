//
//  MinimumTimeVisitingAllPoints.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.12.2023.
//

import Foundation

class MinimumTimeVisitingAllPoints {
    class Solution {
        func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
            var res = 0

            for i in 0 ..< points.count - 1 {
                let currentX = points[i][0]
                let currentY = points[i][1]
                let nextX = points[i + 1][0]
                let nextY = points[i + 1][1]
                res += max(
                    abs(currentX - nextX),
                    abs(currentY - nextY)
                )
            }

            return res
        }
    }
}
