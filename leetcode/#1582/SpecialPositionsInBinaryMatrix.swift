//
//  SpecialPositionsInBinaryMatrix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.12.2023.
//

import Foundation

class SpecialPositionsInBinaryMatrix {
    class Solution {
        func numSpecial(_ mat: [[Int]]) -> Int {
            let rows = mat.count
            let columns = mat[0].count
            
            var _1sInRow: [Int: Int] = [:]
            var _1sInColumn: [Int: Int] = [:]
            
            for rowIndex in 0 ..< rows {
                for columnIndex in 0 ..< columns {
                    if mat[rowIndex][columnIndex] == 1 {
                        if let _1s = _1sInRow[rowIndex] {
                            _1sInRow[rowIndex] = _1s + 1
                        } else {
                            _1sInRow[rowIndex] = 1
                        }
                        
                        if let _1s = _1sInColumn[columnIndex] {
                            _1sInColumn[columnIndex] = _1s + 1
                        } else {
                            _1sInColumn[columnIndex] = 1
                        }
                    }
                }
            }
            
            var res = 0
            
            for rowIndex in 0 ..< rows {
                for columnIndex in 0 ..< columns {
                    let num = mat[rowIndex][columnIndex]
                    if num == 1 {
                        if let _1sRow = _1sInRow[rowIndex],
                           _1sRow == 1,
                           let _1sColumn = _1sInColumn[columnIndex],
                           _1sColumn == 1 {
                            res += 1
                        }
                    }
                }
            }
            
            return res
        }
    }
}
