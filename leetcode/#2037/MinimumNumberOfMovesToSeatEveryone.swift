//
//  MinimumNumberOfMovesToSeatEveryone.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.06.2024.
//

import Foundation

class MinimumNumberOfMovesToSeatEveryone {
    class Solution {
        func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
            var result = 0
            let seats = seats.sorted()
            let students = students.sorted()
            
            for i in 0 ..< seats.count {
                let seat = seats[i]
                let student = students[i]
                result += abs(seat - student)
            }
            
            return result
        }
    }
}
