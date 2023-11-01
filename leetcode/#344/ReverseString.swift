//
//  ReverseString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.11.2023.
//

import Foundation

class ReverseString {
    class Solution {
        func reverseString(_ s: inout [Character]) {
            let middleIndex = (s.count - 1) / 2
            var endIndex = s.count - 1
            
            for i in 0 ... middleIndex {
                let temp = s[i]
                s[i] = s[endIndex]
                s[endIndex] = temp
                endIndex -= 1
            }
        }
    }
}
