//
//  PartitionArrayAccordingToGivenPivot.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class PartitionArrayAccordingToGivenPivot {
    class Solution {
        func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
            var left: [Int] = []
            var middle: [Int] = []
            var right: [Int] = []
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                if num == pivot {
                    middle.append(num)
                } else if num < pivot {
                    left.append(num)
                } else {
                    right.append(num)
                }
            }
            
            return left + middle + right
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
