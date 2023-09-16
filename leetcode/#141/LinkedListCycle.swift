//
//  LinkedListCycle.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.05.2021.
//

class LinkedListCycle {
    class Solution {
        func hasCycle(_ head: ListNode?) -> Bool {
            var fast = head
            var slow = head

            while fast != nil && fast?.next != nil {
                fast = fast?.next?.next
                slow = slow?.next
                if (fast === slow) { return true }
            }

            return false
        }
    }
}
