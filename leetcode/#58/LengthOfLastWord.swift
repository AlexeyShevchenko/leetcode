//
//  LengthOfLastWord.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.10.2023.
//

import Foundation

class LengthOfLastWord {
    class Solution {
        func lengthOfLastWord(_ s: String) -> Int {
            // res should be at least 1 which means
            // that we have already met at least one `not space char`
            var res = 0

            for c in s.reversed() {
                if c == " " {
                    if res > 0 {
                        return res
                    }
                } else {
                    res += 1
                }
            }

            return res
        }
    }
}
