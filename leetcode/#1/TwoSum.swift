//
//  TwoSum.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.03.2021.
//

class TwoSum {
    
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            if nums.count < 2 { return [Int]() }
            var dict = [Int: Int]()
            for i in 0...nums.count - 1 {
                let needed = target - nums[i]
                if let key = dict[needed] { return [i, key] }
                dict[nums[i]] = i
            }
            return [Int]()
        }
    }
}
