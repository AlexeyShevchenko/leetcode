//
//  Permutations.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.03.2024.
//

import Foundation

class Permutations {
    class Solution {
        func permute(_ nums: [Int]) -> [[Int]] {
            var res: [[Int]] = []
            var currentNums: [Int] = []
            
            func backtrack(_ nums: [Int]) {
                if currentNums.count == nums.count {
                    res.append(currentNums)
                    return
                }
                
                for num in nums {
                    guard !currentNums.contains(num) else { continue }
                    currentNums.append(num)
                    backtrack(nums)
                    currentNums.removeLast()
                }
            }
            
            backtrack(nums)
            
            return res
        }
    }
}
