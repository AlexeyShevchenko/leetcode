//
//  RelativeSortArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.06.2024.
//

import Foundation

class RelativeSortArray {
    class Solution {
        func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
            var result: [Int] = []
            var arr1NumAndCount: [Int: Int] = [:]
            
            for i in 0 ..< arr1.count {
                let num = arr1[i]
                if let count = arr1NumAndCount[num] {
                    arr1NumAndCount[num] = 1 + count
                } else {
                    arr1NumAndCount[num] = 1
                }
            }
            
            
            for i in 0 ..< arr2.count {
                let num = arr2[i]
                if let count = arr1NumAndCount[num] {
                    for _ in 0 ..< count {
                        result.append(num)
                    }
                    arr1NumAndCount.removeValue(forKey: num)
                }
            }
            
            let tailSortedNums = arr1NumAndCount.keys.sorted()
            for i in 0 ..< tailSortedNums.count {
                let tailNum = tailSortedNums[i]
                guard let count = arr1NumAndCount[tailNum] else { continue }
                for _ in 0 ..< count {
                    result.append(tailNum)
                }
            }
            
            return result
        }
    }
}
