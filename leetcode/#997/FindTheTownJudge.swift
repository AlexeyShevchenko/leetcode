//
//  FindTheTownJudge.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.09.2023.
//

import Foundation

class FindTheTownJudge {
    class Solution {
        func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
            if n == 0 {
                return -1
            }
            
            if n == 1 && trust.isEmpty {
                return 1
            }
            
            // key - who is trusted
            // value - count of trusters
            var dict: [Int: Int] = [:]
            // who trust
            var trusters: Set<Int> = .init()
            
            for trustRelationship in trust {
                let truster = trustRelationship[0]
                trusters.insert(truster)
                
                let oneIsTrusred  = trustRelationship[1]
                if let totalForTrusted = dict[oneIsTrusred] {
                    dict[oneIsTrusred] = totalForTrusted + 1
                } else {
                    dict[oneIsTrusred] = 1
                }
            }
            
            for possibleJudge in dict.keys {
                if !trusters.contains(possibleJudge),
                   let trustersCount = dict[possibleJudge],
                   trustersCount == n - 1 {
                    return possibleJudge
                }
            }
            
            return -1
        }
    }
}
