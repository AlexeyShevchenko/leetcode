//
//  MonotonicArray.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.09.2023.
//

import Foundation

class MonotonicArray {
    class Solution {
        private enum ArrayType {
            case increasing
            case decreasing
            case unknown
        }
        
        func isMonotonic(_ nums: [Int]) -> Bool {
            if nums.count < 2 {
                return true
            }
            // [6,5,4,4]
            
            let arrayType = getArrayType(nums)
            
            var firstPointer = 0
            var secondPointer = 1
            
            while secondPointer < nums.count {
                let numAtFirstPointer = nums[firstPointer]
                let numAtSecondPointer = nums[secondPointer]
                
                switch arrayType {
                case .increasing:
                    if numAtSecondPointer < numAtFirstPointer {
                        return false
                    }
                case .decreasing:
                    if numAtSecondPointer > numAtFirstPointer {
                        return false
                    }
                case .unknown: break
                }
                
                firstPointer += 1
                secondPointer += 1
            }
            
            return true
        }
        
        private func getArrayType(_ nums: [Int]) -> ArrayType {
            let first = nums[0]
            for i in 1 ..< nums.count {
                let num = nums[i]
                if num == first { continue }
                else {
                    return first < num ? .increasing : .decreasing
                }
            }
            return .unknown
        }
    }
}
