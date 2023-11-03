//
//  LinkedListCycleII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.11.2023.
//

import Foundation

class LinkedListCycleII {
    class Solution {
        func detectCycle(_ head: ListNode?) -> ListNode? {
            if head?.next == nil {
                return nil
            }
            
            var slow = head
            var fast = head
            
            while fast != nil && fast?.next != nil {
                slow = slow?.next
                fast = fast?.next?.next
                
                if slow === fast {
                    slow = head
                    break
                }
            }
            
            if slow === fast {
                return slow
            }
            
            while slow !== fast {
                slow = slow?.next
                fast = fast?.next
                
                if slow === fast {
                    return slow
                }
            }
            
            return nil
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
