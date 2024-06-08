//
//  ContinuousSubarraySum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.06.2024.
//

import Foundation

class ContinuousSubarraySum {
    class Solution {
        func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
            var dict: [Int: Int] = [
                0 : -1,
            ]
            var total = 0

            for i in 0 ..< nums.count {
                let num = nums[i]
                total += num
                let reminder = total % k
                if let index = dict[reminder] {
                    if (i - index) > 1 {
                        return true
                    }
                } else {
                    dict[reminder] = i
                }
            }

            return false
        }
    }
}
