//
//  ContainsDuplicateII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 23.09.2023.
//

import Foundation

class ContainsDuplicateII {
    class Solution {
        func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
            var dict: [Int: Int] = [:]
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                if let prev = dict[num], i - prev <= k {
                    return true
                }
                dict[num] = i
            }

            return false
        }
    }
}
