//
//  FindPolygonWithTheLargestPerimeter.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.02.2024.
//

import Foundation

class FindPolygonWithTheLargestPerimeter {
    class Solution {
        func largestPerimeter(_ nums: [Int]) -> Int {
            let nums = nums.sorted()
            var res = -1
            var prefixSum = 0
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                if prefixSum > num {
                    res = prefixSum + num
                }
                prefixSum += num
            }
            
            return res
        }
    }
}
