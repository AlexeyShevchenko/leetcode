//
//  TwoSumIIInputArrayIsSorted.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.10.2023.
//

import Foundation

class TwoSumIIInputArrayIsSorted {
    class Solution {
        func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
            var dict: [Int: Int] = [:]
            for i in 0 ..< numbers.count {
                let num = numbers[i]
                let needed = target - num
                if let index = dict[needed] {
                    return [index + 1, i + 1]
                }
                dict[num] = i
            }
            return []
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
