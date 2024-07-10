//
//  CrawlerLogFolder.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.07.2024.
//

import Foundation

class CrawlerLogFolder {
    class Solution {
        func minOperations(_ logs: [String]) -> Int {
            var result = 0
            
            for i in 0 ..< logs.count {
                let log = logs[i]
                switch log {
                case "./":
                    continue
                case "../":
                    result = max(0, result - 1)
                default:
                    result += 1
                }
            }
            
            return result
        }
    }
}
