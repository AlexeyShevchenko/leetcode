//
//  BestTimeToBuyAndSellStock.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.03.2021.
//

import Foundation

class BestTimeToBuyAndSellStock {

    class Solution {
        func maxProfit(_ prices: [Int]) -> Int {
            var minPrice = Int.max
            var maxProfite = 0
            for i in 0...prices.count - 1 {
                let currentPrice = prices[i]
                if currentPrice < minPrice {
                    minPrice = currentPrice
                } else if currentPrice - minPrice > maxProfite {
                    maxProfite = currentPrice - minPrice
                }
            }
            return maxProfite
        }
    }
}
