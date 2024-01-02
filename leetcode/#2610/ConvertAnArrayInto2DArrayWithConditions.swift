//
//  ConvertAnArrayInto2DArrayWithConditions.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.01.2024.
//

import Foundation

class ConvertAnArrayInto2DArrayWithConditions {
    class Solution {
        func findMatrix(_ nums: [Int]) -> [[Int]] {
            var res: [[Int]] = []
            var numsAndFrequency: [Int: Int] = [:]

            for i in 0 ..< nums.count {
                let num = nums[i]
                if let frequency = numsAndFrequency[num] {
                    let incrementedFrequency = frequency + 1
                    numsAndFrequency[num] = incrementedFrequency
                    if res.count < incrementedFrequency {
                        res.append([num])
                    } else {
                        res[frequency].append(num)
                    }
                } else {
                    let firstTime = 1
                    numsAndFrequency[num] = firstTime
                    if res.count < firstTime {
                        res.append([num])
                    } else {
                        res[firstTime - 1].append(num)
                    }
                }
            }
            
            return res
        }
    }
}

//
/*
Input: [1,3,4,1,2,3,1]

1
numsAndFrequency[1] = 1
1 -> res
res[[1,]]

3
numsAndFrequency[3] = 1
3 -> res
res[[1,3,]]

4
numsAndFrequency[4] = 1
4 -> res
res[[1,3,4,]]

1
numsAndFrequency[1] = 2
1 -> res
res[[1,3,4,], [1,]]

2
numsAndFrequency[2] = 1
2 -> res
res[[1,3,4,], [1,2,]]

3
numsAndFrequency[3] = 2
3 -> res
res[[1,3,4,], [1,2,3,]]

1
numsAndFrequency[1] = 3
1 -> res
res[[1,3,4,], [1,2,3,], [1,]]
 
 */
