//
//  FirstBadVersion.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 13.11.2023.
//

import Foundation

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool{
        return true
    }
}

class FirstBadVersion {
    class Solution : VersionControl {
        func firstBadVersion(_ n: Int) -> Int {
            var left = 0
            var right = n
            
            while left <= right {
                let mid = left + (right - left) / 2
                if isBadVersion(mid), !isBadVersion(mid - 1) {
                    return mid
                }
                let isMidBad = isBadVersion(mid)
                if isMidBad {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            }
            
            return 0
        }
    }
}
