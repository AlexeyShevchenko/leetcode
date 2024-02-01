//
//  DivideArrayIntoArraysWithMaxDifference.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.02.2024.
//

import Foundation

class DivideArrayIntoArraysWithMaxDifference {
    class Solution {
        func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
            var res: [[Int]] = []
            let nums = nums.sorted()
            let chunks = nums.count / 3

            for i in 0 ..< chunks {
                let tailIndex = i * 3
                let tail = nums[tailIndex]
                let headIndex = i * 3 + 2
                let head = nums[headIndex]
                if (head - tail) > k {
                    return []
                }
                res.append(.init(nums[tailIndex...headIndex]))
            }
            
            return res
        }
    }
}
