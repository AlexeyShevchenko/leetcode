//
//  CalculateMoneyInLeetcodeBank.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.12.2023.
//

import Foundation

class CalculateMoneyInLeetcodeBank {
    class Solution {
        func totalMoney(_ n: Int) -> Int {
            var res = 0

            for i in 1 ... n {
                let pair = weekIndexAndDayInCurrentWeek(i)
                res += (pair.dayInWeek + pair.weekIndex)
            }
            
            return res
        }
        
        private func weekIndexAndDayInCurrentWeek(_ day: Int) -> (weekIndex: Int, dayInWeek: Int) {
            let weekIndex = (day - 1) / 7
            let dayIndex = day - (7 * weekIndex)
            
            return (weekIndex: weekIndex, dayInWeek: dayIndex)
        }
    }
}
