//
//  LeastNumberOfUniqueIntegersAfterKRemovals.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.02.2024.
//

import Foundation

class LeastNumberOfUniqueIntegersAfterKRemovals {
    class Solution {
        func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
            var k = k
            var res = 0
            var numsAndFrequency: [Int: Int] = [:]
            for i in 0 ..< arr.count {
                let num = arr[i]
                if let frequency = numsAndFrequency[num] {
                    numsAndFrequency[num] = frequency + 1
                } else {
                    numsAndFrequency[num] = 1
                }
            }
            
            let sortedNumsByFrequency = numsAndFrequency.sorted(by: { $0.value < $1.value })
            
            for pair in sortedNumsByFrequency.enumerated() {
                if k == 0 { break }
                
                let frequency = pair.element.value
                let num = pair.element.key
                if frequency >= k {
                    numsAndFrequency[num] = frequency - k
                    k = 0
                } else {
                    numsAndFrequency[num] = 0
                    k -= frequency
                }
            }
            
            for key in numsAndFrequency.keys {
                guard let frequency = numsAndFrequency[key] else { continue }
                if frequency > 0 {
                    res += 1
                }
            }
            
            return res
        }
    }
}
