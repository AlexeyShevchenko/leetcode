//
//  SpiralMatrix.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.10.2023.
//

import Foundation

class SpiralMatrix {
    class Solution {
        func spiralOrder(_ matrix: [[Int]]) -> [Int] {
            let rowsCount = matrix.count
            let columnCount = matrix[0].count
            
            var rowStartPointer = 0
            var rowEndPointer = rowsCount - 1
            var columnStartPointer = 0
            var columnEndPointer = columnCount - 1
            var res: [Int] = []
            
            while rowStartPointer <= rowEndPointer && columnStartPointer <= columnEndPointer {
                // from left to right
                for i in columnStartPointer ... columnEndPointer {
                    res.append(matrix[rowStartPointer][i])
                }
                rowStartPointer += 1
                if rowStartPointer > rowEndPointer {
                    break
                }
                
                // from top to bottom
                for i in rowStartPointer ... rowEndPointer {
                    res.append(matrix[i][columnEndPointer])
                }
                columnEndPointer -= 1
                if columnStartPointer > columnEndPointer {
                    break
                }
                
                // from right to left
                for i in (columnStartPointer ... columnEndPointer).reversed() {
                    res.append(matrix[rowEndPointer][i])
                }
                rowEndPointer -= 1
                if rowStartPointer > rowEndPointer {
                    break
                }
                
                // from bottom to top
                for i in (rowStartPointer ... rowEndPointer).reversed() {
                    res.append(matrix[i][columnStartPointer])
                }
                columnStartPointer += 1
            }
            
            return res
        }
    }
}
