//
//  BestMeetingPoint.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.12.2023.
//

import Foundation

class BestMeetingPoint {
    class Solution {
        func minTotalDistance(_ grid: [[Int]]) -> Int {
            let rows = getRows(grid)
            let columns = getColumns(grid)
            let res = minTotalDistance(rows) + minTotalDistance(columns)
            return res
        }
        
        private func getRows(_ grid: [[Int]]) -> [Int] {
            var res: [Int] = []
            for row in 0 ..< grid.count {
                for column in 0 ..< grid[0].count {
                    if grid[row][column] == 1 {
                        res.append(row)
                    }
                }
            }
            return res
        }
        
        private func getColumns(_ grid: [[Int]]) -> [Int] {
            var res: [Int] = []
            for column in 0 ..< grid[0].count {
                for row in 0 ..< grid.count {
                    if grid[row][column] == 1 {
                        res.append(column)
                    }
                }
            }
            return res
        }
        
        private func minTotalDistance(_ points: [Int]) -> Int {
            var res = 0
            var left = 0
            var right = points.count - 1
            
            while left < right {
                res += points[right] - points[left]
                
                left += 1
                right -= 1
            }
            
            return res
        }
    }
}
