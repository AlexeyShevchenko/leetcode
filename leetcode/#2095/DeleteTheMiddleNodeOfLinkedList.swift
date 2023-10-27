//
//  DeleteTheMiddleNodeOfLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.10.2023.
//

import Foundation

class DeleteTheMiddleNodeOfLinkedList {
    class Solution {
        func deleteMiddle(_ head: ListNode?) -> ListNode? {
            // add all nodes to stack
            var stack: [ListNode] = []
            var current = head
            while let currentForLoop = current {
                stack.append(currentForLoop)
                current = currentForLoop.next
            }

            // handle age cases
            if stack.isEmpty {
                return head
            }
            if stack.count == 1 {
                /*
                 Input: head = [1]
                 Output: []
                 */
                return nil
            }
            if stack.count == 2 {
                /*
                 Input: head = [2,1]
                 Output: [2]
                 */
                stack[0].next = nil
                return stack[0]
            }
            
            // get previous item, set its next with next after meddle item
            let middleIndex = stack.count / 2
            let previousItem = stack[middleIndex - 1]
            let nextItem = stack[middleIndex + 1]
            previousItem.next = nextItem
            
            // get middle item (middleIndex = stack.count / 2)
            let middleItem = stack[middleIndex]
            middleItem.next = nil
            
            return head
        }
    }
}
// Time compexity: O(n)
// Space complexity: O(n)
