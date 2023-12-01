//
//  CheckIfTwoStringArraysAreEquivalent.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.12.2023.
//

import Foundation

class CheckIfTwoStringArraysAreEquivalent {
    class Solution {
        func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
            var array1: [Character] = []
            var array2: [Character] = []
            
            for s in word1 {
                for c in s {
                    array1.append(c)
                }
            }
            
            for s in word2 {
                for c in s {
                    array2.append(c)
                }
            }
            
            guard array1.count == array2.count else { return false }
            
            for i in 0 ..< array1.count {
                guard array1[i] == array2[i] else { return false }
            }
            
            return true
        }
    }
}
