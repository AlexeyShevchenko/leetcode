//
//  ReverseLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.03.2021.
//

import Foundation

class ReverseLinkedList {
    public class ListNode {
        public var val: Int
        public var next: ListNode? // <-- change
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }

    class Solution {
        func reverseList(_ head: ListNode?) -> ListNode? {
            var previousNode: ListNode? = nil
            var currentNode = head
            var nextNode = head?.next
            while nextNode != nil {
                currentNode?.next = previousNode
                previousNode = currentNode
                currentNode = nextNode
                nextNode = currentNode?.next
            }
            currentNode?.next = previousNode
            return currentNode
        }
    }
}
