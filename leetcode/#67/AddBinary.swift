//
//  AddBinary.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.04.2021.
//

import Foundation

class AddBinary {
    class Solution {
        func addBinary(_ a: String, _ b: String) -> String {
            let aArray = Array(a)
            let bArray = Array(b)
            var i = aArray.count - 1
            var j = bArray.count - 1
            var carry = 0
            var result = ""

            while i >= 0 || j >= 0 || carry > 0 {
                var sum = carry
                if i >= 0 {
                    if let num = Int(String(aArray[i])) {
                        sum += num
                    }
                    i -= 1
                }
                if j >= 0 {
                    if let num = Int(String(bArray[j])) {
                        sum += num
                    }
                    j -= 1
                }
                result = "\(sum % 2)" + result
                carry = sum / 2
            }

            return result
        }
    }
}
