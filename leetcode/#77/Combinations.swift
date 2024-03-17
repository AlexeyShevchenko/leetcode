//
//  Combinations.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.03.2024.
//

import Foundation

class Combinations {
    class Solution {
        func combine(_ n: Int, _ k: Int) -> [[Int]] {
            var res: [[Int]] = []
            
            func backtrack(_ index: Int, _ current: [Int]) {
                guard current.count != k else {
                    res.append(current)
                    return
                }
                
                for i in index ..< n + 1 {
                    backtrack(i + 1, current + [i])
                }
            }
            
            backtrack(1, [])
            
            return res
        }
    }
}
