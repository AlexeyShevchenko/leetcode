//
//  IntersectionOfTwoArrays.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.09.2023.
//

import Foundation

class IntersectionOfTwoArrays {
    class Solution {
        func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
            // [1,2,2,1] -> <1, 2>
            var uniqueNums: Set<Int> = .init()
            for i in 0 ..< nums1.count {
                let num = nums1[i]
                uniqueNums.insert(num)
            }
            
            // go through nums2, check is num2_at_i in `uniqueNums`
            // if true -> add num2_at_i to `res` by remove from `uniqueNums`
            var res: [Int] = []
            for i in 0 ..< nums2.count {
                let num = nums2[i]
                if let n = uniqueNums.remove(num) {
                    res.append(n)
                }
            }
            
            return res
        }
    }
}
