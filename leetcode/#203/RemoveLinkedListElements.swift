//
//  RemoveLinkedListElements.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.10.2023.
//

import Foundation

class RemoveLinkedListElements {
    class Solution {
        func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
            var prev: ListNode? = .init(0)
            let newHead: ListNode? = .init(0, prev)
            var head = head
            
            while let nodeForLoop = head {
                if nodeForLoop.val != val {
                    prev?.next = nodeForLoop
                    prev = nodeForLoop
                } else {
                    prev?.next = nodeForLoop.next
                }
                head = head?.next
            }
            
            return newHead?.next?.next
        }
    }
}

// Time comlpexity: O(n)
// Space complexity: O(1)
