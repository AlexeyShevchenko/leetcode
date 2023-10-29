//
//  MaximumTwinSumOfLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.10.2023.
//

import Foundation

class MaximumTwinSumOfLinkedList {
    class Solution {
        func pairSum(_ head: ListNode?) -> Int {
            var stack: [Int] = []
            var current = head
            
            while let currentForLoop = current {
                stack.append(currentForLoop.val)
                current = currentForLoop.next
            }
            
            var sum = 0
            let middleIndex = stack.count / 2
            
            for i in 0 ..< middleIndex {
                let lastIndex = stack.count - i - 1
                let currentSum = stack[i] + stack[lastIndex]
                sum = max(sum, currentSum)
            }
            
            return sum
        }
    }
}
