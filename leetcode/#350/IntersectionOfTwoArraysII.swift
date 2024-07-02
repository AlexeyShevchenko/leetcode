//
//  IntersectionOfTwoArraysII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.09.2023.
//

import Foundation

class IntersectionOfTwoArraysII {
    class Solution {
        func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
            var nums1Dict: [Int: Int] = [:]
            
            for i in 0 ..< nums1.count {
                let num = nums1[i]
                if let count = nums1Dict[num] {
                    nums1Dict[num] = 1 + count
                } else {
                    nums1Dict[num] = 1
                }
            }
            
            var nums2Dict: [Int: Int] = [:]
            
            for i in 0 ..< nums2.count {
                let num = nums2[i]
                if let count = nums2Dict[num] {
                    nums2Dict[num] = 1 + count
                } else {
                    nums2Dict[num] = 1
                }
            }
            
            var res: [Int] = []
            
            for key in nums1Dict.keys {
                if let nums1Count = nums1Dict[key],
                   let nums2Count = nums2Dict[key] {
                    let minCount = min(nums1Count, nums2Count)
                    res.append(contentsOf: [Int].init(repeating: key, count: minCount))
                }
            }
            
            return res
        }
    }
}
