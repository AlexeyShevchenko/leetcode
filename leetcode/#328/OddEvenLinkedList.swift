//
//  OddEvenLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.11.2023.
//

import Foundation

class OddEvenLinkedList {
    class Solution {
        func oddEvenList(_ head: ListNode?) -> ListNode? {
            var odd = head
            var even = head?.next
            let evenHead = even
            
            while even != nil, even?.next != nil {
                odd?.next = even?.next
                odd = odd?.next
                even?.next = odd?.next
                even = even?.next
            }
            
            odd?.next = evenHead
            
            return head
        }
    }
}
// Time complexity: O(n)
// Space comlexity: O(1)
