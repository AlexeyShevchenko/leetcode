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
            
            let arr1 = m == 0 ? [] : nums1[0...m - 1]
            let arr2 = n == 0 ? [] : nums2[0...n - 1]
            var index1 = 0
            var index2 = 0
            var arr = [Int]()
            
            while index1 < arr1.count && index2 < arr2.count {
                let element1 = arr1[index1]
                let element2 = arr2[index2]
                if element1 > element2 {
                    arr.append(element2)
                    index2 = index2 + 1
                } else if element1 < element2 {
                    arr.append(element1)
                    index1 = index1 + 1
                } else {
                    arr.append(element1)
                    arr.append(element2)
                    index1 = index1 + 1
                    index2 = index2 + 1
                }
            }
            
            if index1 == arr1.count {
                arr += arr2[index2...]
            } else if index2 == arr2.count {
                arr += arr1[index1...]
            }
            
            nums1 = arr
        }
    }
}
