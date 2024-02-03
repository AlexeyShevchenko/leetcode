//
//  SubstringsOfSizeThreeWithDistinctCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.02.2024.
//

import Foundation

class SubstringsOfSizeThreeWithDistinctCharacters {
    class Solution {
        func countGoodSubstrings(_ s: String) -> Int {
            var res = 0
            let windowSize = 3
            guard s.count >= windowSize else { return res }

            for i in 0 ..< s.count - windowSize + 1 {
                let index1 = s.index(s.startIndex, offsetBy: i)
                let index2 = s.index(s.startIndex, offsetBy: i + 1)
                let index3 = s.index(s.startIndex, offsetBy: i + 2)
                
                guard s[index1] != s[index2] else { continue }
                guard s[index2] != s[index3] else { continue }
                guard s[index1] != s[index3] else { continue }
                res += 1
            }
            
            return res
        }
    }
}
