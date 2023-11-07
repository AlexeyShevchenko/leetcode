//
//  SwapNodesInPairs.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.11.2023.
//

import Foundation

class SwapNodesInPairs {
    class Solution {
        func swapPairs(_ head: ListNode?) -> ListNode? {
            let dummy: ListNode? = ListNode(-1, head)
            var point = dummy
            
            while point != nil {
                let first = point?.next
                var second: ListNode? = nil
                
                if first != nil {
                    second = first?.next
                }
                
                if second != nil {
                    let secondNext = second?.next
                    second?.next = first
                    point?.next = second
                    first?.next = secondNext
                    point = first
                } else {
                    break
                }
            }
            
            return dummy?.next
        }
    }
}
