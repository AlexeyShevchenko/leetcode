//
//  PassThePillow.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.07.2024.
//

import Foundation

class PassThePillow {
    class Solution {
        func passThePillow(_ n: Int, _ time: Int) -> Int {
            let rounds = time / (n - 1)
            let extraTime = time % (n - 1)
            return (rounds % 2 == 0) ? (extraTime + 1) : (n - extraTime)
        }
    }
}
