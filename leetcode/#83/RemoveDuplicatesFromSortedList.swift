//
//  RemoveDuplicatesFromSortedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.10.2023.
//

import Foundation

class RemoveDuplicatesFromSortedList {
    class Solution {
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            if head == nil {
                return head
            }
            
            var head = head
            var stack: [ListNode] = []
            var set: Set<Int> = .init()
            
            while head != nil {
                if let currentHead = head {
                    if !set.contains(currentHead.val) {
                        set.insert(currentHead.val)
                        stack.append(currentHead)
                    }
                }
                head = head?.next
            }
            
            if stack.count == 1 {
                head = stack.first
                head?.next = nil
                return head
            }
            
            head = stack.first
            
            for i in 1 ..< stack.count {
                let prevIndex = i - 1
                let currentIndex = i
                stack[prevIndex].next = stack[currentIndex]
            }
            
            stack[stack.count - 1].next = nil
            
            return head
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
