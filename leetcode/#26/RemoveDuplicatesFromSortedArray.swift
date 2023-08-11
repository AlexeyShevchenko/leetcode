//
//  RemoveDuplicatesFromSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.08.2023.
//

import Foundation

class RemoveDuplicatesFromSortedArray {
    class Solution {
        func removeDuplicates(_ nums: inout [Int]) -> Int {
            var currentNum: Int? = nil
            var newArray: [Int] = []
            
            for num in nums {
                if num == currentNum {
                    continue
                } else {
                    currentNum = num
                    newArray.append(num)
                }
            }
            
            nums = newArray
            
            return nums.count
        }
    }
}
