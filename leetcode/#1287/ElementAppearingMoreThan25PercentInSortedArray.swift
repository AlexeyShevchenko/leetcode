//
//  ElementAppearingMoreThan25PercentInSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.12.2023.
//

import Foundation

class ElementAppearingMoreThan25PercentInSortedArray {
    class Solution {
        func findSpecialInteger(_ arr: [Int]) -> Int {
            // get count
            // iterate
            // store prev, compare with current, if the same increase counter, if no rewrite prev, reset counter
            
            var prev: Int = .min
            var counter = 0
            var _25Percent = Double(arr.count) / 4
            
            for i in 0 ..< arr.count {
                let num = arr[i]
                if num == prev {
                    counter += 1
                } else {
                    prev = num
                    counter = 1
                }
                
                if Double(counter) > _25Percent {
                    return num
                }
            }
            
            return -1
        }
    }
}
