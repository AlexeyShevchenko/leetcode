//
//  TopKFrequentElements.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 21.09.2023.
//

import Foundation

class TopKFrequentElements {
    class Solution {
        func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
            var dict: [Int: Int] = [:]
            for num in nums {
                if let val = dict[num] {
                    dict[num] = val + 1
                } else {
                    dict[num] = 1
                }
            }
            
            let dictAr = Array(dict)
            let sortedDictAr = dictAr.sorted { $0.value > $1.value }
            var res: [Int] = []
            
            for i in 0 ..< k {
                let elem = sortedDictAr[i]
                res.append(elem.key)
            }
            
            return res
        }
    }
}
