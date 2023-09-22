//
//  IsSubsequence.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.09.2023.
//

import Foundation

class IsSubsequence {
    class Solution {
        /// exist `s` subsequence inside of some string `t`
        func isSubsequence(_ s: String, _ t: String) -> Bool {
            if s.isEmpty { return true }
            
            var arrS = Array(s)
            var arrT = Array(t)
            var sPointer = 0
            
            for tPointer in 0 ..< arrT.count {
                if arrS[sPointer] == arrT[tPointer] {
                    sPointer += 1
                }
                if sPointer == arrS.count {
                    return true
                }
            }
            return false
        }
    }
}

// Time complexity: O(t.count)
// Space complexity: O(s.count+t.count)
