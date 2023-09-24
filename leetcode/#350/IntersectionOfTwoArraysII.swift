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
            var nums1 = nums1.sorted()
            var nums2 = nums2.sorted()
            var nums1Pointer = 0
            var nums2Pointer = 0
            var result: [Int] = []
            
            while nums1Pointer < nums1.count && nums2Pointer < nums2.count {
                if nums1[nums1Pointer] == nums2[nums2Pointer] {
                    result.append(nums1[nums1Pointer])
                    nums1Pointer += 1
                    nums2Pointer += 1
                } else if nums1[nums1Pointer] < nums2[nums2Pointer] {
                    nums1Pointer += 1
                } else {
                    nums2Pointer += 1
                }
            }
            
            return result
        }
    }
}
