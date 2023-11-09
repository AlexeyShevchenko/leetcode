//
//  ReverseLinkedListII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.11.2023.
//

import Foundation

class ReverseLinkedListII {
    class Solution {
        func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
            let dummy: ListNode? = .init(0, head)
            var leftPrev = dummy
            var current = head
            
            for _ in 0 ..< (left - 1) {
                leftPrev = leftPrev?.next
                current = current?.next
            }
            
            var subListHead = current
            var subListLeftPrev: ListNode? = nil
            
            for _ in 0 ... (right - left) {
                let next = current?.next
                current?.next = subListLeftPrev
                subListLeftPrev = current
                current = next
            }
            
            leftPrev?.next = subListLeftPrev
            subListHead?.next = current
            
            return dummy?.next
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
