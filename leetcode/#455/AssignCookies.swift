//
//  AssignCookies.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.01.2024.
//

import Foundation

class AssignCookies {
    class Solution {
        func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
            var greedFactors = g.sorted() // minimum size of a cookie
            var cookieSizes = s.sorted()
            var greedIndex = 0
            var cookieIndex = 0
            var res = 0

            while greedIndex < greedFactors.count, cookieIndex < cookieSizes.count {
                if cookieSizes[cookieIndex] >= greedFactors[greedIndex] {
                    res += 1
                    greedIndex += 1
                    cookieIndex += 1
                } else {
                    cookieIndex += 1
                }
            }
            
            return res
        }
    }
}
