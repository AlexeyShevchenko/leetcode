//
//  MaximumProductOfTwoElementsInAnArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.12.2023.
//

import Foundation

class MaximumProductOfTwoElementsInAnArray {
    class Solution {
        func maxProduct(_ nums: [Int]) -> Int {
            guard nums.count >= 2 else { return -1 }
            if nums.count == 2 {
                return (nums[0] - 1) * (nums[1] - 1)
            } else {
                var maxNum: Int = max(nums[0], nums[1])
                var nextAfterMaxNum: Int = min(nums[0], nums[1])
                
                for i in 2 ..< nums.count {
                    let num = nums[i]
                    
                    if num >= maxNum {
                        nextAfterMaxNum = maxNum
                        maxNum = num
                    }  else if num > nextAfterMaxNum {
                        nextAfterMaxNum = num
                    }
                }
                
                return (maxNum - 1) * (nextAfterMaxNum - 1)
            }
        }
    }
}
