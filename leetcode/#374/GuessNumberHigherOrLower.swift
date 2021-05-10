//
//  GuessNumberHigherOrLower.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.05.2021.
//

import Foundation

protocol GuessGame {}

class GuessNumberHigherOrLower {
    /**
     * Forward declaration of guess API.
     * @param  num -> your guess number
     * @return          -1 if the picked number is lower than your guess number
     *                  1 if the picked number is higher than your guess number
     *               otherwise return 0
     * func guess(_ num: Int) -> Int
     */
    class Solution : GuessGame {
        func guessNumber(_ n: Int) -> Int {
            var left = 0
            var right = n

            while left <= right {
                let middle = left + (right - left) / 2
                let resultFromApi = guess(middle)
                if resultFromApi == 0 {
                    return middle
                } else if resultFromApi == -1 {
                    right = middle - 1
                } else {
                    left = middle + 1
                }
            }
            return 0
        }
    }
}

extension GuessNumberHigherOrLower.Solution {

    private func guess(_ num: Int) -> Int {
        // indeed it should contain some logic
        return 0
    }
}
