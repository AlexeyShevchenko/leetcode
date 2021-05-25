//
//  SearchInRotatedSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.05.2021.
//

import Foundation

class SearchInRotatedSortedArray {
    class Solution {
        func search(_ nums: [Int], _ target: Int) -> Int {
            //[4,5,6,7,0,1,2]
            var lessValue: Int = .min
            for (index, value) in nums.enumerated() {
                
            }


            for (index, value) in nums.enumerated() {
                if target == value { return index}
            }
            return -1
        }
    }
}
