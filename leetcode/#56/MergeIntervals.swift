//
//  MergeIntervals.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.09.2023.
//

import Foundation

class MergeIntervals {
    class Solution {
        func merge(_ intervals: [[Int]]) -> [[Int]] {
            if intervals.count < 2 {
                return intervals
            }
            
            let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
            var mergedIntervals: [[Int]] = [sortedIntervals[0]]
            
            for i in 1 ..< sortedIntervals.count {
                if sortedIntervals[i][0] <= mergedIntervals[mergedIntervals.count - 1][1] {
                    mergedIntervals[mergedIntervals.count - 1][1] = max(
                        sortedIntervals[i][1],
                        mergedIntervals[mergedIntervals.count - 1][1]
                    )
                } else {
                    mergedIntervals.append(sortedIntervals[i])
                }
            }
            
            return mergedIntervals
        }
    }
}

// Time complexity: O(nlog(n))
// Space complexity: O(n)
