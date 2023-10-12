//
//  IsomorphicStrings.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.10.2023.
//

import Foundation

class IsomorphicStrings {
    class Solution {
        func isIsomorphic(_ s: String, _ t: String) -> Bool {
            let sArray = Array(s)
            let tArray = Array(t)
            var mapST = [String.Element: String.Element]()
            var mapTS = [String.Element: String.Element]()
            
            for i in 0 ..< s.count {
                let sChar = sArray[i]
                let tChat = tArray[i]
                
                if let val = mapST[sChar], val != tChat {
                    return false
                }
                if let val = mapTS[tChat], val != sChar {
                    return false
                }
                
                mapST[sChar] = tChat
                mapTS[tChat] = sChar
            }
            
            return true
        }
    }
}

// Time complexity: O(n)
// Space complexity: O(n)
