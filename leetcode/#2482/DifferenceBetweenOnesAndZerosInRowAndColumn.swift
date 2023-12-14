//
//  DifferenceBetweenOnesAndZerosInRowAndColumn.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 14.12.2023.
//

import Foundation

class DifferenceBetweenOnesAndZerosInRowAndColumn {
    class Solution {
        func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
            let rows = grid.count
            let columns = grid[0].count
            var diff: [[Int]] = .init(
                repeating: .init(
                    repeating: 0,
                    count: columns
                ),
                count: rows
            )
            
            var onesRowi: [Int: Int] = [:]
            var zerosRowi: [Int: Int] = [:]
            var onesColj: [Int: Int] = [:]
            var zerosColj: [Int: Int] = [:]
            
            for i in 0 ..< rows {
                for j in 0 ..< columns {
                    let num = grid[i][j]
                    if num == 0 {
                        if let valInRow = zerosRowi[i] {
                            zerosRowi[i] = valInRow + 1
                        } else {
                            zerosRowi[i] = 1
                        }
                        
                        if let valInColumn = zerosColj[j] {
                            zerosColj[j] = valInColumn + 1
                        } else {
                            zerosColj[j] = 1
                        }
                    } else if num == 1 {
                        if let valInRow = onesRowi[i] {
                            onesRowi[i] = valInRow + 1
                        } else {
                            onesRowi[i] = 1
                        }
                        
                        if let valInColumn = onesColj[j] {
                            onesColj[j] = valInColumn + 1
                        } else {
                            onesColj[j] = 1
                        }
                    }
                }
            }
            
            for i in 0 ..< rows {
                for j in 0 ..< columns {
                    diff[i][j] = (onesRowi[i] ?? 0) + (onesColj[j] ?? 0) - (zerosRowi[i] ?? 0) - (zerosColj[j] ?? 0)
                }
            }
            
            return diff
        }
    }
}
