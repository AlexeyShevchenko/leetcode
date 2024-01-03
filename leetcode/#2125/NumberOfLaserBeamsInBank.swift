//
//  NumberOfLaserBeamsInBank.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.01.2024.
//

import Foundation

class NumberOfLaserBeamsInBank {
    class Solution {
        func numberOfBeams(_ bank: [String]) -> Int {
            var res = 0
            var prev = 0
            
            for floor in bank {
                var deviceCount = 0
                
                for char in floor {
                    if char == "1" {
                        deviceCount += 1
                    }
                }
                
                if deviceCount > 0 {
                    res += deviceCount * prev
                    prev = deviceCount
                }
            }
            
            return res
        }
    }
}
