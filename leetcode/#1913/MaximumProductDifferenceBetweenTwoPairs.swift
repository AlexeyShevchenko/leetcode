//
//  MaximumProductDifferenceBetweenTwoPairs.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.12.2023.
//

import Foundation

class MaximumProductDifferenceBetweenTwoPairs {
    class Solution {
        func maxProductDifference(_ nums: [Int]) -> Int {
            var minNum: Int = .max
            var nextAfterMinNum: Int = .max
            
            var maxNum: Int = .min
            var nextBeforeMaxNum: Int = .min
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                
                if num > maxNum {
                    nextBeforeMaxNum = maxNum
                    maxNum = num
                } else if num == maxNum {
                    nextBeforeMaxNum = num
                } else if num > nextBeforeMaxNum {
                    nextBeforeMaxNum = num
                } 
                
                if num < minNum {
                    nextAfterMinNum = minNum
                    minNum = num
                } else if num == minNum {
                    nextAfterMinNum = num
                } else if num < nextAfterMinNum {
                    nextAfterMinNum = num
                }
            }
            
            return (maxNum * nextBeforeMaxNum) - (nextAfterMinNum * minNum)
        }
    }
}
