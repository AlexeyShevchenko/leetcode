//
//  MergeNodesInBetweenZeros.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.10.2023.
//

import Foundation

class MergeNodesInBetweenZeros {
    class Solution {
        func mergeNodes(_ head: ListNode?) -> ListNode? {
            var stack: [Int] = []
            var current = head
            
            while let currentForLoop = current {
                if currentForLoop.val == 0, currentForLoop.next != nil {
                    stack.append(0)
                } else {
                    stack[stack.count - 1] = stack[stack.count - 1] + currentForLoop.val
                }
                current = current?.next
            }
            
            var newHead: ListNode? = .init(stack[0])
            current = newHead
            for i in 1 ..< stack.count {
                let val = stack[i]
                current?.next = .init(val)
                current = current?.next
            }
            
            return newHead
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
