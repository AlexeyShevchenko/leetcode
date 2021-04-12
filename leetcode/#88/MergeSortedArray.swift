//
//  MergeSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.04.2021.
//

import Foundation

class MergeSortedArray {
    class Solution {
        func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            let a1 = (m == 0) ? [] : nums1[0...m - 1]
            let a2 = (n == 0) ? [] : nums2[0...n - 1]
            var output = [Int]()
            output += a1
            output += a2
            output.sort()
            nums1 = output
        }
    }
}
