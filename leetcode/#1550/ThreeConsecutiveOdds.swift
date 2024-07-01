//
//  ThreeConsecutiveOdds.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.07.2024.
//

import Foundation

class ThreeConsecutiveOdds {
    class Solution {
        func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
            var index = 0
            while index < arr.count {
                let num = arr[index]
                
                if num % 2 == 1 {
                    let index1 = index + 1
                    let index2 = index + 2
                    
                    if index1 < arr.count,
                       index2 < arr.count,
                       arr[index1] % 2 == 1,
                       arr[index2] % 2 == 1 {
                        return true
                    }
                }
                
                index += 1
            }
            
            return false
        }
    }
}
