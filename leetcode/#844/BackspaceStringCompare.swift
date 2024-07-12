//
//  BackspaceStringCompare.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.07.2024.
//

import Foundation

class BackspaceStringCompare {
    class Solution {
        func backspaceCompare(_ s: String, _ t: String) -> Bool {
            let hash: Character = .init("#")
            var sStack: [Character] = []
            var tStack: [Character] = []
            
            for char in s {
                switch char {
                case hash:
                    _ = sStack.popLast()
                default:
                    sStack.append(char)
                }
            }
            
            for char in t {
                switch char {
                case hash:
                    _ = tStack.popLast()
                default:
                    tStack.append(char)
                }
            }
            
            return sStack == tStack
        }
    }
}
