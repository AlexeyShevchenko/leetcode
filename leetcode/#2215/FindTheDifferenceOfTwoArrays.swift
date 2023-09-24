//
//  FindTheDifferenceOfTwoArrays.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.09.2023.
//

import Foundation

class FindTheDifferenceOfTwoArrays {
    class Solution {
        func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
            var nums1Set: Set<Int> = .init()
            for i in 0 ..< nums1.count {
                nums1Set.insert(nums1[i])
            }
            
            var nums2Set: Set<Int> = .init()
            for i in 0 ..< nums2.count {
                nums2Set.insert(nums2[i])
            }
            
            var nums2Set_copy = nums2Set
            var nums1Set_copy = nums1Set
            var nums1NotInNums2: [Int] = []
            var nums2NotInNums1: [Int] = []
            
            /*
             answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
             */
            
            // go for nums2 and remove each num from nums1
            for _ in 0 ..< nums2Set.count {
                guard let num = nums2Set.popFirst() else { continue }
                _ = nums1Set_copy.remove(num)
            }
            for _ in 0 ..< nums1Set_copy.count {
                guard let num = nums1Set_copy.popFirst() else { continue }
                nums1NotInNums2.append(num)
            }
            
            // answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
            for _ in 0 ..< nums1Set.count {
                guard let num = nums1Set.popFirst() else { continue }
                _ = nums2Set_copy.remove(num)
            }
            for _ in 0 ..< nums2Set_copy.count {
                guard let num = nums2Set_copy.popFirst() else { continue }
                nums2NotInNums1.append(num)
            }
            
            return [
                nums1NotInNums2,
                nums2NotInNums1,
            ]
        }
    }
}
