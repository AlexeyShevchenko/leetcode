//
//  FindAllDuplicatesInAnArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.05.2024.
//

import Foundation

class FindAllDuplicatesInAnArray {
    class Solution {
        func findDuplicates(_ nums: [Int]) -> [Int] {
            var result: [Int] = []
            var seen: Set<Int> = .init()
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                if seen.contains(num) {
                    result.append(num)
                }
                seen.insert(num)
            }
            
            return result
        }
    }
}
