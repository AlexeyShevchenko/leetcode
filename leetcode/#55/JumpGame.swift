//
//  JumpGame.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.09.2023.
//

import Foundation

class JumpGame {
    class Solution {
        func canJump(_ nums: [Int]) -> Bool {
            var visited: [Bool] = .init(repeating: false, count: nums.count)
            visited[0] = true
            
            for i in 1 ..< visited.count {
                for j in 0 ..< i {
                    let prevVisited = visited[j]
                    guard prevVisited else { continue }
                    let ableToReachI = j + nums[j] >= i
                    guard ableToReachI else { continue }
                    visited[i] = true
                    break
                }
            }
            
            return visited[nums.count - 1]
        }
    }
}
