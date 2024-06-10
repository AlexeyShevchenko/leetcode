//
//  HeightChecker.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.06.2024.
//

import Foundation

class HeightChecker {
    class Solution {
        func heightChecker(_ heights: [Int]) -> Int {
            let sorted = heights.sorted()
            var result = 0
            
            for i in 0 ..< heights.count {
                let height = heights[i]
                let sortedHeight = sorted[i]
                if height != sortedHeight {
                    result += 1
                }
            }
            
            return result
        }
    }
}
