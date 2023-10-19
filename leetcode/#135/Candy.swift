//
//  Candy.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.10.2023.
//

import Foundation

class Candy {
    class Solution {
        func candy(_ ratings: [Int]) -> Int {
            var candies: [Int] = .init(repeating: 1, count: ratings.count)

            for i in 1 ..< ratings.count {
                let current = ratings[i]
                let prev = ratings[i - 1]
                if current > prev {
                    candies[i] = candies[i - 1] + 1
                }
            }
            
            for i in (0 ..< ratings.count - 1).reversed() {
                let current = ratings[i]
                let next = ratings[i + 1]
                if current > next {
                    candies[i] = max(candies[i], candies[i + 1] + 1)
                }
            }
            
            var res = 0
            
            for i in 0 ..< candies.count {
                res += candies[i]
            }
            
            return res
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
