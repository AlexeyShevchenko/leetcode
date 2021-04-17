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
            guard var prefix = strs.first else { return "" }
            for i in 1..<strs.count {
                while(!strs[i].hasPrefix(prefix)) {
                    _ = prefix.popLast()
                    guard !prefix.isEmpty else { return prefix }
                }
            }
            return prefix
        }
    }
}
