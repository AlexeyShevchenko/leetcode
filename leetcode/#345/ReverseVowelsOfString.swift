//
//  ReverseVowelsOfString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.11.2023.
//

import Foundation

class ReverseVowelsOfString {
    class Solution {
        /*
         Input: s = "Euston saw I was not Sue."
         Output: "euston saw I was not SuE."
         */
        func reverseVowels(_ s: String) -> String {
            let set: Set<String.Element> = .init(["a", "e", "i", "o", "u"])
            var chars = Array(s)
            var startIndex = 0
            var endIndex = chars.count - 1
            
            while startIndex < endIndex {
                if !set.contains(.init(chars[startIndex].lowercased())) {
                    startIndex += 1
                    continue
                }
                
                if !set.contains(.init(chars[endIndex].lowercased())) {
                    endIndex -= 1
                    continue
                }
                
                let temp = chars[startIndex]
                chars[startIndex] = chars[endIndex]
                chars[endIndex] = temp
                startIndex += 1
                endIndex -= 1
            }
            
            return .init(chars)
        }
    }
}
