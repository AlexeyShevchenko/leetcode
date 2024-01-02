//
//  PathSumIV.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 01.01.2024.
//

import Foundation

class PathSumIV {
    class Solution {
        func pathSum(_ nums: [Int]) -> Int {
            //[111,217,221,315,415]
            var res = 0
            guard !nums.isEmpty else { return res }
            guard nums.count > 1 else {
                return (nums[0] - 100) % 10
            }
            
            var levelsAndNodes: [Int: [Int: Int]] = [:]
            
            for i in 0 ..< nums.count {
                let num = nums[i]
                let level = num / 100
                let indexInLevel = (num - level * 100) / 10
                let value = (num - level * 100) % 10
                
                if var levelNodes = levelsAndNodes[level] {
                    levelNodes[indexInLevel] = value
                    levelsAndNodes[level] = levelNodes
                } else {
                    levelsAndNodes[level] = [indexInLevel: value]
                }
            }
            
            for level in (1 ... levelsAndNodes.count).reversed() {
                guard let indexInLevelAndValue = levelsAndNodes[level] else { continue }
                
                for indexInLevel in indexInLevelAndValue.keys {
                    guard let value = indexInLevelAndValue[indexInLevel] else { continue }
                    let upperLevel = level - 1
                    let parentIndexInLevel = (indexInLevel + 1) / 2
                    guard let parentValue = levelsAndNodes[upperLevel]?[parentIndexInLevel] else { continue }
                    res += value + parentValue
                }
            }

            return res
        }
    }
}

/*
 
 Input: nums = [
    113,
    215,221,
    344,
    477,
 ]
 
 dict[1] = [
    (indexInLevel: 1, value: 3),
 ]
 dict[2] = [
     (indexInLevel: 1, value: 5),
     (indexInLevel: 2, value: 1),
 ]
 dict[3] = [
     (indexInLevel: 4, value: 4),
 ]
 dict[4] = [
     (indexInLevel: 7, value: 7),
 ]
 
  3          - 1st level | 1 item
 / \
5   1        - 2nd level | 2 items
     \
      4      - 3rd level | 4 items
     /
    7        - 4th level | 8 items

 
 (5 + 3) + (1 + 3) + (4 + 1) + (7 + 4) = 28
 
 
 
 [111,217,221,315,415]
        1
       / \
      7   1
     /
    5
   /
  5
 
 (5 + 5) + (5 + 7) + (7 + 1) + (1 + 1) = 10 + 12 + 8 + 2
 
 */
