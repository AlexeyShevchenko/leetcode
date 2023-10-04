//
//  FindTheIndexOfTheFirstOccurrenceInAString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.10.2023.
//

import Foundation

class FindTheIndexOfTheFirstOccurrenceInAString {
    class Solution {
        func strStr(_ haystack: String, _ needle: String) -> Int {
            if needle.isEmpty {
                return 0
            }
            
            if haystack == needle {
                return 0
            }
            
            if haystack.count < needle.count {
                return -1
            }
            
            let hArray = Array(haystack)
            let nArray = Array(needle)
            
            for i in 0 ..< (haystack.count + 1 - needle.count) {
                var count = 0
                
                for j in 0 ..< needle.count {
                    if hArray[i + j] == nArray[j] {
                        count += 1
                    } else {
                        break
                    }
                }

                if count == needle.count {
                    return i
                }
            }
            
            return -1
        }
    }
}

// Time complexity: O(haystack.count * needle.count)
// Space complexity: O(haystack.count + needle.count)
