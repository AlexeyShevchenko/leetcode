//
//  DeleteNodeInLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 30.10.2023.
//

import Foundation

class DeleteNodeInLinkedList {
    class Solution {
        func deleteNode(_ node: ListNode?) {
            guard var node = node, let next = node.next else { return }
            node.val = next.val
            node.next = next.next
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(1)
