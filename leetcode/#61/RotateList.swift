//
//  RotateList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.10.2023.
//

import Foundation

class RotateList {
    class Solution {
        func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
            if head == nil {
                return nil
            }
            if k == 0 {
                return head
            }
            
            var start: ListNode = .init(0)
            start.next = head
            var current = head
            var dict: [Int: ListNode?] = [:]
            var count = 0
            
            while current != nil {
                dict[count] = current
                current = current?.next
                count += 1
            }
            
            if count == 1 {
                return start.next
            }
            if k % count == 0 {
                return start.next
            }
            
            var k = k % count
            
            dict[count - k - 1]??.next = nil
            dict[count - 1]??.next = start.next
            start.next = dict[count - k] as? ListNode
            
            return start.next
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
