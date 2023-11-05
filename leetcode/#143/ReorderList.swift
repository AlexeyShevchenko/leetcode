//
//  ReorderList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.11.2023.
//

import Foundation

class ReorderList {
    class Solution {
        func reorderList(_ head: ListNode?) {
            // find middle
            var slow = head
            var fast = head
            
            while fast != nil, fast?.next != nil {
                slow = slow?.next
                fast = fast?.next?.next
            }
            
            // reverse second part
            var prev: ListNode? = nil
            var startOfSecondPart = slow
            
            while startOfSecondPart != nil {
                let next = startOfSecondPart?.next
                startOfSecondPart?.next = prev
                prev = startOfSecondPart
                startOfSecondPart = next
            }
            
            startOfSecondPart = prev
            
            // merge first part with second one
            var first = head
            var second = startOfSecondPart
            var temp: ListNode? = nil
            
            while second?.next != nil  {
                temp = first?.next
                first?.next = second
                first = temp
                
                temp = second?.next
                second?.next = first
                second = temp
            }
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
