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
                let fromA = Int(aToUse[i])!
                let fromB = Int(bToUse[i])!
                let sum = fromA + fromB + carry
                if sum == 0 {
                    res.insert(contentsOf: "0", at: res.startIndex)
                    carry = 0
                } else if sum == 1 {
                    res.insert(contentsOf: "1", at: res.startIndex)
                    carry = 0
                } else if sum == 2 {
                    res.insert(contentsOf: "0", at: res.startIndex)
                    carry = 1
                } else if sum == 3 {
                    res.insert(contentsOf: "1", at: res.startIndex)
                    carry = 1
                }
            }
            if carry > 0 {
                res.insert("1", at: res.startIndex)
            }
            return res
        }
    }
}
