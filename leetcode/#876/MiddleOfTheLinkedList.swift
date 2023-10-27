//
//  MiddleOfTheLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.10.2023.
//

import Foundation

class MiddleOfTheLinkedList {
    class Solution {
        func middleNode(_ head: ListNode?) -> ListNode? {
            var stack: [ListNode] = []
            var current = head
            
            while current != nil {
                if let c = current {
                    stack.append(c)
                }
                current = current?.next
            }
            
            let middleIndex = stack.count / 2
            
            return stack[middleIndex]
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
