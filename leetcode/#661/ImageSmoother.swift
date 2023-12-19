//
//  ImageSmoother.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.12.2023.
//

import Foundation

class ImageSmoother {
    class Solution {
        func imageSmoother(_ img: [[Int]]) -> [[Int]] {
            var res = img
            let rows = img.count
            let columns = img[0].count
            
            for row in 0 ..< rows {
                for column in 0 ..< columns {
                    // 3 x 3
                    var sum = 0
                    var count = 0
                    
                    for i in row - 1 ... row + 1 {
                        for j in column - 1 ... column + 1 {
                            if i < 0 || i == rows || j < 0 || j == columns { continue }
                            sum += img[i][j]
                            count += 1
                        }
                    }
                    
                    let cell = sum / count
                    res[row][column] = cell
                }
            }
            
            return res
        }
    }
}
