//
//  MergeStringsAlternately.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class MergeStringsAlternately {
    class Solution {
        func mergeAlternately(_ word1: String, _ word2: String) -> String {
            let word1Array: Array = .init(word1)
            let word2Array: Array = .init(word2)
            
            var word1Pointer = 0
            var word2Pointer = 0
            
            var resultArray: [String.Element] = []
            
            while word1Pointer < word1Array.count && word2Pointer < word2Array.count {
                resultArray.append(word1Array[word1Pointer])
                resultArray.append(word2Array[word2Pointer])
                
                word1Pointer += 1
                word2Pointer += 1
            }
            
            if word1Array.count == word2Array.count {
                return String(resultArray)
            } else if word1Array.count > word2Array.count {
                for i in word1Pointer ..< word1Array.count {
                    resultArray.append(word1Array[i])
                }
            } else {
                for i in word2Pointer ..< word2Array.count {
                    resultArray.append(word2Array[i])
                }
            }
            
            return String(resultArray)
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
