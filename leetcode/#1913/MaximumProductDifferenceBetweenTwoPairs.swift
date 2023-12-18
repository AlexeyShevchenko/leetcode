//
//  MaximumProductDifferenceBetweenTwoPairs.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.12.2023.
//

import Foundation

class MaximumProductDifferenceBetweenTwoPairs {
    class Solution {
        func maxProductDifference(_ nums: [Int]) -> Int {
            var num = nums.sorted()
            return (num[num.count - 1] * num[num.count - 2]) - (num[1] * num[0])
        }
    }
}
