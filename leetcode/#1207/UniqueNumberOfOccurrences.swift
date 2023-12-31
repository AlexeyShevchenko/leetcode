//
//  UniqueNumberOfOccurrences.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 31.12.2023.
//

import Foundation

class UniqueNumberOfOccurrences {
    class Solution {
        func uniqueOccurrences(_ arr: [Int]) -> Bool {
            var numsAndOccurrences: [Int: Int] = [:]
            
            for i in 0 ..< arr.count {
                let num = arr[i]
                if let occurrences = numsAndOccurrences[num] {
                    numsAndOccurrences[num] = occurrences + 1
                } else {
                    numsAndOccurrences[num] = 1
                }
            }
            
            var innerUniqueOccurrences: Set<Int> = .init()
            
            for key in numsAndOccurrences.keys {
                guard let occurrences = numsAndOccurrences[key] else { continue }
                if innerUniqueOccurrences.contains(occurrences) {
                    return false
                }
                innerUniqueOccurrences.insert(occurrences)
            }
            
            return true
        }
    }
}
