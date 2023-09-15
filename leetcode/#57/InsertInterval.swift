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
            
            // add intervals which are before newInterval
            while i < intervals.count, intervals[i][1] < newInterval[0] {
                result.append(intervals[i])
                i += 1
            }
            
            // add intervals which are overlapping with newInterval
            var mergegInterval = newInterval
            while i < intervals.count, !isInterval(intervals[i], after: mergegInterval) {
                mergegInterval[0] = min(mergegInterval[0], intervals[i][0])
                mergegInterval[1] = max(mergegInterval[1], intervals[i][1])
                i += 1
            }
            result.append(mergegInterval)
            
            // add intervals which are after newInterval
            while i < intervals.count {
                result.append(intervals[i])
                i += 1
            }
            
            return result
        }
        
        private func isInterval(_ interval: [Int], after mergedInterval: [Int]) -> Bool {
            return interval[0] > mergedInterval[1]
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
