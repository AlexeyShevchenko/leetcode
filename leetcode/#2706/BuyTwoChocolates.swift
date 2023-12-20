//
//  BuyTwoChocolates.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 20.12.2023.
//

import Foundation

class BuyTwoChocolates {
    class Solution {
        func buyChoco(_ prices: [Int], _ money: Int) -> Int {
            var minPriceChoco0: Int = .max
            var minPriceChoco1: Int = .max
            
            for i in 0 ..< prices.count {
                let price = prices[i]
                if price <= minPriceChoco0 {
                    minPriceChoco1 = minPriceChoco0
                    minPriceChoco0 = price
                } else if price < minPriceChoco1 {
                    minPriceChoco1 = price
                }
            }
            
            if (minPriceChoco0 + minPriceChoco1) <= money {
                return money - (minPriceChoco0 + minPriceChoco1)
            } else {
                return money
            }
        }
    }
}
