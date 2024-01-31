//
//  DailyTemperatures.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 31.01.2024.
//

import Foundation

class DailyTemperatures {
    class Solution {
        func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
            var answer: [Int] = .init(repeating: 0, count: temperatures.count)
            var stack: [Int] = []
            
            for currentDayIndex in 0 ..< temperatures.count {
                let currentDayTemperature = temperatures[currentDayIndex]
                
                while let dayIndex = stack.last,
                      temperatures[dayIndex] < currentDayTemperature,
                      !stack.isEmpty {
                    let prevDayIndex = stack.removeLast()
                    answer[prevDayIndex] = currentDayIndex - prevDayIndex
                }
                
                stack.append(currentDayIndex)
            }
            
            return answer
        }
    }
}
