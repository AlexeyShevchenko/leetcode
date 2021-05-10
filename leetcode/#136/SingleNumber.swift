//
//  SingleNumber.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import Foundation

class SingleNumber {

    class Solution {
        func singleNumber(_ nums: [Int]) -> Int {
            var set = Set<Int>()
            for num in nums {
                if set.contains(num) { set.remove(num) }
                else { set.insert(num) }
            }
            return set.first!
        }
    }
}
