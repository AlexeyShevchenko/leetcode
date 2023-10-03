//
//  AddTwoNumbers.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 03.10.2023.
//

import Foundation

class AddTwoNumbers {
    class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var listNode1 = l1
            var listNode2 = l2
            var result: ListNode = .init(0)
            var pointer = result
            var carry = 0
            
            while listNode1 != nil || listNode2 != nil {
                var sum = 0 + carry
                
                if listNode1 != nil {
                    sum += listNode1?.val ?? 0
                    listNode1 = listNode1?.next
                }
                
                if listNode2 != nil {
                    sum += listNode2?.val ?? 0
                    listNode2 = listNode2?.next
                }
                
                carry = sum / 10
                sum = sum % 10
                pointer.next = .init(sum)
                if let next = pointer.next {
                    pointer = next
                }
            }
            
            if carry == 1 {
                pointer.next = .init(1)
            }
            
            return result.next
        }
    }
}
