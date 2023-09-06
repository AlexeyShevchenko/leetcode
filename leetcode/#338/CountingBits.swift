//
//  CountingBits.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.09.2023.
//

import Foundation

class CountingBits {
    class Solution {
        func countBits(_ n: Int) -> [Int] {
            var result: [Int] = []
            for i in 0 ... n {
                let c = hammingWeight(i)
                result.append(c)
            }
            
            return result
        }
        
        private func hammingWeight(_ num: Int) -> Int {
            var n = num
            var numberOf1Bits = 0
            
            while n > 0 {
                if n & 1 == 1 {
                    numberOf1Bits += 1
                }
                n = n >> 1
            }
            
            return numberOf1Bits
        }
    }
}

/*
 
 Input: n = 5
 Output: [0,1,1,2,1,2]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10
 3 --> 11
 4 --> 100
 5 --> 101
 
 */
