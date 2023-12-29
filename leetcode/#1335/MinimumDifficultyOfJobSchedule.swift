//
//  MinimumDifficultyOfJobSchedule.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.12.2023.
//

import Foundation

class MinimumDifficultyOfJobSchedule {
    class Solution {
        func minDifficulty(_ jobDifficulty: [Int], _ numberOfDays: Int) -> Int {
            if jobDifficulty.count < numberOfDays {
                return -1
            }
            
            let maxDifficulty = 1001
            
            var cache = [String: Int]()
            
            func dfs(_ dayIndex: Int, _ numberOfDays: Int, _ currentMax: Int) -> Int {
                if dayIndex == jobDifficulty.count {
                    return numberOfDays == 0 ? 0 : maxDifficulty
                }
                if numberOfDays == 0 {
                    return maxDifficulty
                }
                
                let key = "\(dayIndex)-\(numberOfDays)-\(currentMax)"
                if let cachedResult = cache[key] {
                    return cachedResult
                }
                
                let currentMax = max(currentMax, jobDifficulty[dayIndex])
                let result = min(
                    dfs(dayIndex + 1, numberOfDays, currentMax),
                    currentMax + dfs(dayIndex + 1, numberOfDays - 1, -1)
                )
                cache[key] = result
                
                return result
            }
            
            return dfs(0, numberOfDays, -1)
        }
    }
}
