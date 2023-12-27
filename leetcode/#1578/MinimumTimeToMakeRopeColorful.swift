//
//  MinimumTimeToMakeRopeColorful.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.12.2023.
//

import Foundation

class MinimumTimeToMakeRopeColorful {
    class Solution {
        func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
            var res = 0
            var left = 0
            var colors: Array = .init(colors)
            
            for right in 1 ..< colors.count {
                let leftBallonColor = colors[left]
                let rightBallonColor = colors[right]
                
                if leftBallonColor == rightBallonColor {
                    let removeLeftBallonNeededTime = neededTime[left]
                    let removeRightBallonNeededTime = neededTime[right]
                    if removeLeftBallonNeededTime < removeRightBallonNeededTime {
                        res += removeLeftBallonNeededTime
                        left = right
                    } else {
                        res += removeRightBallonNeededTime
                    }
                } else {
                    left = right
                }
            }
            
            return res
        }
    }
}
