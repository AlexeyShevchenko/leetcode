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
            var first = 0
            var last = s.count - 1
            
            while first < last {
                let temp = s[first]
                s[first] = s[last]
                s[last] = temp
                first += 1
                last -= 1
            }
        }
    }
}
