//
//  FindAllNumbersDisappearedInAnArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.05.2024.
//

import Foundation

class FindAllNumbersDisappearedInAnArray {
    class Solution {
        func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
            var set: Set<Int> = .init()
            
            for i in 1 ... nums.count {
                set.insert(i)
            }
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                set.remove(num)
            }
            
            return .init(set)
        }
    }
}
