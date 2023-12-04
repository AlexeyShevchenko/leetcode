//
//  Largest3SameDigitNumberInString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 04.12.2023.
//

import Foundation

class Largest3SameDigitNumberInString {
    class Solution {
        func largestGoodInteger(_ num: String) -> String {
            var res = ""
            guard num.count > 2 else { return res }
            let num = Array(num)
            var left = 0
            var right = 1
            
            while right < num.count {
                let atLeft = num[left]
                let atRight = num[right]

                if atLeft == atRight {
                    if (right - left) == 2 {
                        res = max(res, String(atLeft))
                        left = right + 1
                        right += 2
                    } else {
                        right += 1
                    }
                } else {
                    left = right
                    right += 1
                }
            }
            
            return "\(res)\(res)\(res)"
        }
    }
}
