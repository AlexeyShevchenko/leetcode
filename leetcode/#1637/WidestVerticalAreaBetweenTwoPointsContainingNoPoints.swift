//
//  WidestVerticalAreaBetweenTwoPointsContainingNoPoints.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.12.2023.
//

import Foundation

class WidestVerticalAreaBetweenTwoPointsContainingNoPoints {
    class Solution {
        func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
            var res = 0
            var points = points.sorted { $0[0] < $1[0] }
            
            for i in 1 ..< points.count {
                let prevX = points[i - 1][0]
                let currentX = points[i][0]
                res = max(res, currentX - prevX)
            }
            
            return res
        }
    }
}
