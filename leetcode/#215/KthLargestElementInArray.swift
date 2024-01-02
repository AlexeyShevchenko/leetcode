//
//  KthLargestElementInArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.01.2024.
//

import Foundation

class KthLargestElementInArray {
    class Solution {
        func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
            let nums = nums.sorted()
            let index = nums.count - k
            return nums[index]
        }
    }
}
