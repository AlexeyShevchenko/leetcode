//
//  TrappingRainWater.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.12.2023.
//

import Foundation

class TrappingRainWater {
    class Solution {
        func trap(_ height: [Int]) -> Int {
            var res = 0
            var left = 0
            var right = height.count - 1
            var maxLeft = height[left]
            var maxRight = height[right]
            
            while left < right {
                if maxLeft <= maxRight {
                    left += 1
                    maxLeft = max(maxLeft, height[left])
                    res += maxLeft - height[left]
                } else {
                    right -= 1
                    maxRight = max(maxRight, height[right])
                    res += maxRight - height[right]
                }
            }
            
            return res
        }
    }
}
