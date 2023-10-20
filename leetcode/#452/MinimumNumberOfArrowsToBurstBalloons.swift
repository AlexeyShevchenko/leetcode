//
//  MinimumNumberOfArrowsToBurstBalloons.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 20.10.2023.
//

import Foundation

class MinimumNumberOfArrowsToBurstBalloons {
    class Solution {
        func findMinArrowShots(_ points: [[Int]]) -> Int {
            if points.isEmpty {
                return 0
            }
            if points.count == 1 {
                return 1
            }
            
            let sortedPointes = points.sorted { $0[1] < $1[1] }
            var arrow = 1
            var end = sortedPointes[0][1]
            
            for i in 1 ..< sortedPointes.count {
                let p = sortedPointes[i]
                if p[0] > end {
                    arrow += 1
                    end = p[1]
                }
            }

            return arrow
        }
    }
}
// Time complexity: O(n log n)
// Space complexity: O(n)
