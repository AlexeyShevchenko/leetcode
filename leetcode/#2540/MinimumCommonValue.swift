//
//  MinimumCommonValue.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.08.2024.
//

import Foundation

class MinimumCommonValue {
    class Solution {
        func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
            var nums1Set: Set<Int> = .init(nums1)
            
            for i in 0 ..< nums2.count {
                let num = nums2[i]
                guard nums1Set.contains(num) else { continue }
                return num
            }
            
            return -1
        }
    }
}
