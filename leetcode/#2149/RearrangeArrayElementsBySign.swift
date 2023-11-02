//
//  RearrangeArrayElementsBySign.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class RearrangeArrayElementsBySign {
    class Solution {
        func rearrangeArray(_ nums: [Int]) -> [Int] {
            var pos: [Int] = []
            var neg: [Int] = []
            var res: [Int] = []
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                if num > 0 {
                    pos.append(num)
                } else {
                    neg.append(num)
                }
            }
            
            for i in 0 ..< pos.count {
                res.append(pos[i])
                res.append(neg[i])
            }
            
            return res
        }
    }
}
