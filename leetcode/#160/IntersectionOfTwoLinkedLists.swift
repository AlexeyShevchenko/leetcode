//
//  IntersectionOfTwoLinkedLists.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.10.2023.
//

import Foundation

class IntersectionOfTwoLinkedLists {
    class Solution {
        func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
            // get lenght of both heads
            var countA = 0
            var pointerA = headA
            while pointerA != nil {
                pointerA = pointerA?.next
                countA += 1
            }
            
            var countB = 0
            var pointerB = headB
            while pointerB != nil {
                pointerB = pointerB?.next
                countB += 1
            }
            
            // skip necessary count of nodes in longer head
            pointerA = headA
            pointerB = headB
            
            if countA != countB {
                var diff = abs(countA - countB)
                if countA > countB {
                    while diff > 0 {
                        pointerA = pointerA?.next
                        diff -= 1
                    }
                } else {
                    while diff > 0 {
                        pointerB = pointerB?.next
                        diff -= 1
                    }
                }
            }
            
            // iterate throught heads to check is there same node
            while pointerA != nil || pointerB != nil {
                if let pointerALoop = pointerA, let pointerBLoop = pointerB {
                    if pointerALoop === pointerBLoop {
                        return pointerBLoop
                    }
                }
                pointerA = pointerA?.next
                pointerB = pointerB?.next
            }
            
            return nil
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
