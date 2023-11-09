//
//  PartitionList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.11.2023.
//

import Foundation

class PartitionList {
    class Solution {
        func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
            var lessStack: [ListNode] = []
            var greaterOrEqualStack: [ListNode] = []
            var current = head

            while let currentForLoop = current {
                if currentForLoop.val < x {
                    lessStack.append(currentForLoop)
                } else {
                    greaterOrEqualStack.append(currentForLoop)
                }
                current = current?.next
            }
            
            let dummy: ListNode? = .init(0)
            var prev = dummy
            
            for i in 0 ..< lessStack.count {
                let node = lessStack[i]
                prev?.next = node
                prev = node
            }
            
            for i in 0 ..< greaterOrEqualStack.count {
                let node = greaterOrEqualStack[i]
                prev?.next = node
                prev = node
            }
            
            prev?.next = nil
            
            return dummy?.next
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
