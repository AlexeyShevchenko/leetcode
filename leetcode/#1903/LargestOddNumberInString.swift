//
//  LargestOddNumberInString.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 07.12.2023.
//

import Foundation

class LargestOddNumberInString {
    class Solution {
        func largestOddNumber(_ num: String) -> String {
            let arrNum: Array = .init(num)
            var index = arrNum.count - 1
            
            while index >= 0 {
                if let int = Int(String((arrNum[index]))), int % 2 == 1 {
                    return String(num.prefix(index + 1))
                }
                index -= 1
            }

            return ""
        }
    }
}
