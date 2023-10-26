//
//  RemoveDuplicatesFromSortedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 24.10.2023.
//

import Foundation

class RemoveDuplicatesFromSortedList {
    class Solution {
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            var currentNode = head

            while currentNode != nil, currentNode?.next != nil {
                if currentNode?.val == currentNode?.next?.val {
                    currentNode?.next = currentNode?.next?.next
                } else {
                    currentNode = currentNode?.next
                }
            }

            return head
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
