//
//  IntegerToRoman.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 25.12.2023.
//

import Foundation

class IntegerToRoman {
    class Solution {
        func intToRoman(_ num: Int) -> String {
            let symbols: [(symbol: String, value: Int)] = [
                (symbol: "I", value: 1),
                (symbol: "IV", value: 4),
                (symbol: "V", value: 5),
                (symbol: "IX", value: 9),
                (symbol: "X", value: 10),
                (symbol: "XL", value: 40),
                (symbol: "L", value: 50),
                (symbol: "XC", value: 90),
                (symbol: "C", value: 100),
                (symbol: "CD", value: 400),
                (symbol: "D", value: 500),
                (symbol: "CM", value: 900),
                (symbol: "M", value: 1000),
            ]
            var num = num
            var res = ""
            
            for (symbol, value) in symbols.reversed() {
                let remainder = num / value
                if remainder > 0 {
                    for _ in 1 ... remainder {
                        res.append(symbol)
                    }
                    num = num % value
                }
            }
            
            return res
        }
    }
}
