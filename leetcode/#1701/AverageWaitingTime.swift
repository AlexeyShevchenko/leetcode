//
//  AverageWaitingTime.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.07.2024.
//

import Foundation

class AverageWaitingTime {
    class Solution {
        func averageWaitingTime(_ customers: [[Int]]) -> Double {
            var time = 0
            var total = 0

            for i in 0 ..< customers.count {
                let customer = customers[i]
                let arrivalTime = customer[0]
                let timeOrderToPrepare = customer[1]

                if time > arrivalTime {
                    total += time - arrivalTime
                } else {
                    time = arrivalTime
                }
                time += timeOrderToPrepare
                total += timeOrderToPrepare
            }

            return Double(total) / Double(customers.count)
        }
    }
}
