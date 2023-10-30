//
//  SwappingNodesInLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.10.2023.
//

import Foundation

class SwappingNodesInLinkedList {
    class Solution {
        func swapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
            var count = 0
            var current = head
            
            while let currentForLoop = current {
                count += 1
                current = currentForLoop.next
            }
            
            var leftNode: ListNode = .init(-1)
            var leftNodeIndex = k - 1
            var rightNode: ListNode = .init(-1)
            var rightNodeIndex = count - k
            
            count = 0
            current = head
            while let currentForLoop = current {
                if count == leftNodeIndex {
                    leftNode = currentForLoop
                }
                if count == rightNodeIndex {
                    rightNode = currentForLoop
                    break
                }
                count += 1
                current = currentForLoop.next
            }
            
            let temp = leftNode.val
            leftNode.val = rightNode.val
            rightNode.val = temp

            return head
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
