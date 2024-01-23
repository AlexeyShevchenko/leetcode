//
//  MaximumLengthOfConcatenatedStringWithUniqueCharacters.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 23.01.2024.
//

import Foundation

class MaximumLengthOfConcatenatedStringWithUniqueCharacters {
    class Solution {
        func maxLength(_ arr: [String]) -> Int {
            func dfs(
                _ array: [String],
                _ position: Int,
                _ res: String
            ) -> Int {
                var resSet: Set<Character> = .init()
                for i in 0 ..< res.count {
                    let index = res.index(res.startIndex, offsetBy: i)
                    let char = res[index]
                    resSet.insert(char)
                }
                
                if res.count != resSet.count {
                    return 0
                }
                
                var best = res.count
                for i in position ..< array.count {
                    best = max(
                        best,
                        dfs(array, i + 1, res + array[i])
                    )
                }
                return best
            }
            
            return dfs(arr, 0, "")
        }
    }
}
