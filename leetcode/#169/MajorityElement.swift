//
//  MajorityElement.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.09.2023.
//

import Foundation

class MajorityElement {
    class Solution {
        func majorityElement(_ nums: [Int]) -> Int {
            // add to dict num and number of appearance
            var dict: [Int: Int] =  [:]
            
            for num in nums {
                if let value = dict[num] {
                    dict[num] = value + 1
                } else {
                    dict[num] = 1
                }
            }
            
            let half = nums.count / 2
            
            // for each dict by keys and check `value > (n / 2)` -> true
            for key in dict.keys {
                if let value = dict[key], value > half {
                    return key
                }
            }
            
            return 0
        }
    }
}
