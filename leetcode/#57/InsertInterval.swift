//
//  InsertInterval.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.09.2023.
//

import Foundation

class InsertInterval {
    class Solution {
        func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
            var result: [[Int]] = []
            var i = 0
            
            // add all intervals that come before newInterval
            while i < intervals.count, intervals[i][1] < newInterval[0] {
                result.append(intervals[i])
                i += 1
            }
            
            // merge overlapping intervals with newInterval
            var mergedInterval = newInterval
            while i < intervals.count, intervals[i][0] <= mergedInterval[1] {
                mergedInterval[0] = min(intervals[i][0], mergedInterval[0])
                mergedInterval[1] = max(intervals[i][1], mergedInterval[1])
                i += 1
            }
            result.append(mergedInterval)
            
            // add all intervals that come after newInterval
            while i < intervals.count {
                result.append(intervals[i])
                i += 1
            }
            
            return result
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
