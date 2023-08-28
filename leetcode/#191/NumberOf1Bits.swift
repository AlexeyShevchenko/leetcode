//
//  NumberOf1Bits.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.08.2023.
//

import Foundation

class NumberOf1Bits {
    class Solution {
        func hammingWeight(_ n: Int) -> Int {
            var num = n
            var numberOf1Bits = 0
            
            while num > 0 {
                // check right bit - `1` or `0`
                if num & 1 == 1 {
                    numberOf1Bits += 1
                }
                // shift to the right
                num = num >> 1
            }
            
            return numberOf1Bits
        }
    }
}
