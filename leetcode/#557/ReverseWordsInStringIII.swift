//
//  ReverseWordsInStringIII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.11.2023.
//

import Foundation

class ReverseWordsInStringIII {
    class Solution {
        func reverseWords(_ s: String) -> String {
            var chars = Array(s)
            if chars.isEmpty {
                return s
            }
            if chars.count == 1 {
                return s
            }
            if chars.count == 2 {
                return "\(chars[1])\(chars[0])"
            }
            
            var leftPointer = 0
            var rightPointer = 1
            
            while rightPointer <= chars.count {
                let lastChar = rightPointer == chars.count
                var meetSpace = false
                if rightPointer < chars.count {
                    meetSpace = chars[rightPointer] == " "
                }
                if lastChar || meetSpace {
                    var inset = 0

                    for _ in leftPointer ... (leftPointer + rightPointer - 1) / 2 {
                        let temp = chars[leftPointer + inset]
                        chars[leftPointer + inset] = chars[rightPointer - inset - 1]
                        chars[rightPointer - inset - 1] = temp
                        inset += 1
                    }

                    leftPointer = rightPointer + 1
                    rightPointer = leftPointer + 1
                } else {
                    rightPointer += 1
                }
            }
            
            return String(chars)
        }
    }
}
