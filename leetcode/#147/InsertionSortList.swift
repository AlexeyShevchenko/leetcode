//
//  InsertionSortList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.11.2023.
//

import Foundation

class InsertionSortList {
    class Solution {
        func insertionSortList(_ head: ListNode?) -> ListNode? {
            var dummy: ListNode = .init(.min, head)
            var prev = dummy
            var current = dummy.next
            
            while let currentForLoop = current {
                if currentForLoop.val >= prev.val {
                    prev = currentForLoop
                    current = currentForLoop.next
                    continue
                }
                
                var temp: ListNode? = dummy
                while let next = temp?.next, currentForLoop.val > next.val {
                    temp = temp?.next
                }
                prev.next = current?.next
                current?.next = temp?.next
                temp?.next = current
                current = prev.next
            }
            
            return dummy.next
        }
    }
}
