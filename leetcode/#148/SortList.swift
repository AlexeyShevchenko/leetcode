//
//  SortList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 05.11.2023.
//

import Foundation

class SortList {
    class Solution {
        func sortList(_ head: ListNode?) -> ListNode? {
            if head == nil || head?.next == nil {
                return head
            }
            
            var prev = head
            var slow = head
            var fast = head
            
            while fast != nil, fast?.next != nil {
                prev = slow
                slow = slow?.next
                fast = fast?.next?.next
            }
            
            prev?.next = nil
            
            var left = sortList(head)
            var right = sortList(slow)
            
            return merge(&left, &right)
        }
        
        private func merge(_ left: inout ListNode?, _ right: inout ListNode?) -> ListNode? {
            let dummy: ListNode? = .init()
            var tail = dummy
            
            while let leftForLoop = left, let rightForLoop = right {
                if leftForLoop.val < rightForLoop.val {
                    tail?.next = left
                    left = left?.next
                } else {
                    tail?.next = right
                    right = right?.next
                }
                tail = tail?.next
            }
            
            if left != nil {
                tail?.next = left
            }
            if right != nil {
                tail?.next = right
            }

            return dummy?.next
        }
    }
}
// Time complexity: O(n log n)
// Space complexity: O(log n)
