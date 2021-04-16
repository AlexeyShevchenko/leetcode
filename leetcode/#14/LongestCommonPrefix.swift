//
//  LongestCommonPrefix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.04.2021.
//

import Foundation

class LongestCommonPrefix {
    class Solution {
        func longestCommonPrefix(_ strs: [String]) -> String {
            if strs.isEmpty { return "" }
            if strs.count == 1 { return strs[0] }
            var index = 0
            var longestPrefix = ""

            while true {
                let firstStr = strs[0]
                guard index < firstStr.count else { return longestPrefix }
                let charAtIndexInFirstStr = firstStr[firstStr.index(firstStr.startIndex, offsetBy: index)]
                for i in 0...strs.count - 1 {
                    let str = strs[i]
                    guard index < str.count else { return longestPrefix }
                    let charAtIndex = str[str.index(str.startIndex, offsetBy: index)]
                    guard charAtIndexInFirstStr == charAtIndex else { return longestPrefix }
                }
                index = index + 1
                longestPrefix = longestPrefix + String(charAtIndexInFirstStr)
            }

            return longestPrefix
        }
    }
}
