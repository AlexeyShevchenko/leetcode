//
//  HighFive.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.08.2024.
//

import Foundation

class HighFive {
    class Solution {
        func highFive(_ items: [[Int]]) -> [[Int]] {
            var studentsAndScores: [Int: [Int]] = [:]
            
            for i in 0 ..< items.count {
                let item = items[i]
                let studentId = item[0]
                let studentScore = item[1]
                
                if let scores = studentsAndScores[studentId] {
                    studentsAndScores[studentId] = scores + [studentScore]
                } else {
                    studentsAndScores[studentId] = [studentScore]
                }
            }
            
            let keys = studentsAndScores.keys.sorted()
            var res: [[Int]] = []
            
            for studentId in keys {
                guard var studentScores = studentsAndScores[studentId] else { continue }
                studentScores.sort(by: >)
                let top5: [Int] = .init(studentScores.prefix(5))
                let average = top5.reduce(0, +) / 5
                res.append([studentId, average])
            }
            
            return res
        }
    }
}
