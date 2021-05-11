//
//  BalancedBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 11.05.2021.
//

import Foundation

class BestTimeToBuyAndSellStockII {
    class Solution {
        
        func maxProfit(_ prices: [Int]) -> Int {
            if prices.count < 2 { return 0 }
            var profit = 0
            for i in 1..<prices.count {
                profit += prices[i] > prices[i - 1] ? (prices[i] - prices[i - 1]) : 0
            }
            return profit
        }
    }
}
