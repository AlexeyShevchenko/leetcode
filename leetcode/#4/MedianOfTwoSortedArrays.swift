//
//  MedianOfTwoSortedArrays.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.10.2023.
//

import Foundation

class MedianOfTwoSortedArrays {
    class Solution {
        func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
            var mergedNums: [Int] = []
            var pointer1 = 0
            var pointer2 = 0
            
            while pointer1 < nums1.count && pointer2 < nums2.count {
                let num1 = nums1[pointer1]
                let num2 = nums2[pointer2]
                
                if num1 > num2 {
                    mergedNums.append(num2)
                    pointer2 += 1
                } else if num1 < num2 {
                    mergedNums.append(num1)
                    pointer1 += 1
                } else {
                    mergedNums.append(num1)
                    mergedNums.append(num2)
                    pointer1 += 1
                    pointer2 += 1
                }
            }
            
            if pointer1 == nums1.count {
                mergedNums += nums2[pointer2...]
            } else if pointer2 == nums2.count {
                mergedNums += nums1[pointer1...]
            }
            
            if mergedNums.count % 2 == 0 {
                let index1 = mergedNums.count / 2
                let index2 = index1 - 1
                return (Double(mergedNums[index1]) + Double(mergedNums[index2])) / 2
            } else {
                let index = mergedNums.count / 2
                return Double(mergedNums[index])
            }
        }
    }
}

// Time compexity: O(nums1.count + nums2.count)
// Space complexity: O(nums1.count + nums2.count)
