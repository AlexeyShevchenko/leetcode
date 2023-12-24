//
//  MinimumChangesToMakeAlternatingBinaryString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.12.2023.
//

import Foundation

class MinimumChangesToMakeAlternatingBinaryString {
    class Solution {
        func minOperations(_ s: String) -> Int {
            // build 2 strings start from 0 and 1
            var s: Array = .init(s)
            let length = s.count
            var startWithZeroString: [String.Element] = []
            for i in 0 ..< length {
                if i % 2 == 0 {
                    startWithZeroString.append("0")
                } else {
                    startWithZeroString.append("1")
                }
            }
            
            // count operation to modify entire string to tepmplate one
            var res1 = 0
            var res2 = 0
            for i in 0 ..< length {
                let charTemplate = startWithZeroString[i]
                let charOriginal = s[i]
                if charTemplate == charOriginal {
                    res1 += 1
                } else {
                    res2 += 1
                }
            }

            // compare count of operations, choose min
            return min(res1, res2)
        }
    }
}
