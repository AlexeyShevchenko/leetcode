//
//  RomanToInteger.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.04.2021.
//

import Foundation

class RomanToInteger {
    class Solution {
        private var dict = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000,
        ]

        func romanToInt(_ s: String) -> Int {
            var result = 0
            var previousNumber = 0
            for (_, element) in s.enumerated().reversed() {
                let s = String(element)
                guard let value = dict[s] else {  continue }
                if (value == 1) && (previousNumber == 5 || previousNumber == 10) {
                    result = result - value
                } else if (value == 10) && (previousNumber == 50 || previousNumber == 100) {
                    result = result - value
                } else if (value == 100) && (previousNumber == 500 || previousNumber == 1000) {
                    result = result - value
                } else {
                    result = result + value
                }
                previousNumber = value
            }
            return result
        }
    }
}
