//
//  FlippingImage.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.11.2023.
//

import Foundation

class FlippingImage {
    class Solution {
        func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
            var image = image
            var n = image.count
            
            for i in 0 ..< n {
                var row = image[i]
                var start = 0
                var end = n - 1
                while start < end {
                    let temp = image[i][start]
                    image[i][start] = image[i][end]
                    image[i][end] = temp
                    start += 1
                    end -= 1
                }
                
                for j in 0 ..< n {
                    image[i][j] = image[i][j] == 0 ? 1 : 0
                }
            }
            
            return image
        }
    }
}
// Time complexity: O(n^2)
// Space complexity: O(n)
