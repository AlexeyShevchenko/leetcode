//
//  ContainerWithMostWater.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.06.2024.
//

import Foundation

class ContainerWithMostWater {
    class Solution {
        func maxArea(_ height: [Int]) -> Int {
            var result = 0
            var left = 0
            var right = height.count - 1
            
            while left < right {
                var distance = right - left
                result = max(
                    result,
                    min(height[left], height[right]) * distance
                )
                
                if height[left] <= height[right] {
                    left += 1
                } else {
                    right -= 1
                }
            }
            
            return result
        }
    }
}
