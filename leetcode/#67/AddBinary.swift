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
            var aToUse = a
            var bToUse = b
            let numberOfZeros = abs(aToUse.count - bToUse.count)
            if numberOfZeros > 0 {
                let zeros = [String](repeating: "0", count: numberOfZeros).joined()
                if aToUse.count < bToUse.count {
                    aToUse = zeros + aToUse
                } else {
                    bToUse = zeros + bToUse
                }
            }
            var res = ""
            var carry = 0
            for i in stride(from: aToUse.count - 1, through: 0, by: -1) {
                let fromA = aToUse[i]
                let fromB = bToUse[i]
                if fromA == fromB {
                    // 0 and 0
                    if fromA == "0" {
                        if carry > 0 {
                            res.insert(contentsOf: "1", at: res.startIndex)
                            carry = 0
                        } else {
                            res.insert(contentsOf: "0", at: res.startIndex)
                            carry = 0
                        }
                    // 1 and 1
                    } else {
                        if carry > 0 {
                            res.insert(contentsOf: "1", at: res.startIndex)
                            carry = 1
                        } else {
                            res.insert(contentsOf: "0", at: res.startIndex)
                            carry = 1
                        }
                    }
                } else { // '0 and 1' or '1 and 0'
                    if carry > 0 {
                        res.insert(contentsOf: "0", at: res.startIndex)
                        carry = 1
                    } else {
                        res.insert(contentsOf: "1", at: res.startIndex)
                        carry = 0
                    }
                }
            }
            if carry > 0 {
                res.insert("1", at: res.startIndex)
            }
            return res
        }
    }
}
