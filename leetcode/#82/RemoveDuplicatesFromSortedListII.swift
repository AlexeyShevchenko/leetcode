//
//  RemoveDuplicatesFromSortedListII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 23.10.2023.
//

import Foundation

class RemoveDuplicatesFromSortedListII {
    class Solution {
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            var head = head
            var dummy: ListNode? = .init(0)
            dummy?.next = head
            var prev = dummy
            
            while head != nil {
                if let next = head?.next, head?.val == next.val {
                    while let next = head?.next, head?.val == next.val {
                        head = head?.next
                    }
                    prev?.next = head?.next
                } else {
                    prev = prev?.next
                }
                head = head?.next
            }
            
            return dummy?.next
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
