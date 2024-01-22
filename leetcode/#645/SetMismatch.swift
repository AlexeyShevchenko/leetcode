//
//  SetMismatch.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.01.2024.
//

import Foundation

class SetMismatch {
    class Solution {
        func findErrorNums(_ nums: [Int]) -> [Int] {
            var numAndFrequency: [Int: Int] = [:]
            for i in 0 ..< nums.count {
                let num = nums[i]
                if let frequency = numAndFrequency[num] {
                    numAndFrequency[num] = frequency + 1
                } else {
                    numAndFrequency[num] = 1
                }
            }
            
            var duplicatedNum = -1
            var missedNum = -1

            for i in 0 ..< nums.count {
                let num = i + 1
                if let frequency = numAndFrequency[num] {
                    if frequency > 1 {
                        duplicatedNum = num
                    }
                } else {
                    missedNum = num
                }
                
                if duplicatedNum != -1, missedNum != -1 {
                    break
                }
            }
            
            return [duplicatedNum, missedNum]
        }
    }
}
