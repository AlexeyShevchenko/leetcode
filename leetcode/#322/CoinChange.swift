//
//  CoinChange.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.08.2023.
//

import Foundation

class CoinChange {
    class Solution {
        func coinChange(_ coins: [Int], _ amount: Int) -> Int {
            if amount < 1 { return 0  }
            var minCoinsHolder = Array(repeating: 0, count: amount + 1)
            
            for amountToMake in 1 ... amount {
                var minCoins: Int = .max
                
                for coin in coins {
                    if coin <= amountToMake {
                        let reminder = amountToMake - coin
                        minCoins = min(minCoins, 1 + minCoinsHolder[reminder])
                    }
                }
                
                if minCoins == .max { return -1 }
                minCoinsHolder[amountToMake] = minCoins
            }
            
            return minCoinsHolder[amount]
        }
    }
}
