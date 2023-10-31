//
//  CountPairsWhoseSumIsLessThanTarget.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 31.10.2023.
//

import Foundation

class CountPairsWhoseSumIsLessThanTarget {
    class Solution {
        func countPairs(_ nums: [Int], _ target: Int) -> Int {
            var pairs = 0
            
            for i in 0 ..< nums.count {
                for j in i + 1 ..< nums.count {
                    if (nums[i] + nums[j]) < target {
                        pairs += 1
                    }
                }
            }
            
            return pairs
        }
    }
}
