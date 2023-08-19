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
            if amount < 1 { return 0 }
            var minCoinsHolder: [Int] = Array(repeating: Int.max, count: amount + 1)
            minCoinsHolder[0] = 0
            
            for interimAmount in 1 ... amount {
                var minCoins: Int = .max
                
                for coin in coins {
                    if interimAmount >= coin {
                        let reminder = interimAmount - coin
                        let minCoinsForReminder = minCoinsHolder[reminder]
                        if minCoinsForReminder == .max { continue }
                        minCoins = min(minCoins, 1 + minCoinsForReminder)
                    }
                }
                
                minCoinsHolder[interimAmount] = minCoins
            }
            
            return minCoinsHolder[amount] == .max ? -1 : minCoinsHolder[amount]
        }
    }
}
