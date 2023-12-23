//
//  PathCrossing.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 23.12.2023.
//

import Foundation

class PathCrossing {
    class Solution {
        func isPathCrossing(_ path: String) -> Bool {
            let directions: [Character: (x: Int, y: Int)] = [
                "N": (x: 0, y: 1),
                "S": (x: 0, y: -1),
                "E": (x: 1, y: 0),
                "W": (x: -1, y: 0),
            ]
            
            var currentPosition: (x: Int, y: Int) = (x: 0, y: 0)
            var visited: Set<String> = .init(["\(currentPosition.x)_\(currentPosition.y)"])
            
            for direction in path {
                guard let direction = directions[direction] else { continue }
                currentPosition = (
                    x: currentPosition.x + direction.x,
                    y: currentPosition.y + direction.y
                )
                let currentPositionToStr = "\(currentPosition.x)_\(currentPosition.y)"
                if visited.contains(currentPositionToStr) {
                    return true
                } else {
                    visited.insert(currentPositionToStr)
                }
            }
            
            return false
        }
    }
}
