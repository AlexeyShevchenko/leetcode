//
//  SquaresOfSortedArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.04.2021.
//

import Foundation

class SquaresOfSortedArray {
    class Solution {
        func sortedSquares(_ nums: [Int]) -> [Int] {
            var num1 = [Int]()
            for n in nums {
                num1.append(n < 0 ? n * (-1) : n)
            }
            num1.sort()

            return num1.map({ $0 * $0 })
        }
    }
}
