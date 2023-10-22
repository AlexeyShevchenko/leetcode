//
//  RemoveNthNodeFromEndOfList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.10.2023.
//

import Foundation

class RemoveNthNodeFromEndOfList {
    class Solution {
        func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
            guard var head = head else { return head }
            
            var dict: [Int: ListNode?] = [:]
            dict[0] = head
            var index = 1
            
            while let next = head.next {
                dict[index] = next
                head = next
                index += 1
            }
            
            let nodeIndexToRemove = index - n
            if nodeIndexToRemove == 0 {
                if dict.count == 1 {
                    return nil
                } else {
                    guard let res = dict[nodeIndexToRemove + 1] else { return nil }
                    return res
                }
            }
            
            let prevIndex = nodeIndexToRemove - 1
            let nextIndex = nodeIndexToRemove + 1
            
            if let prevNode = dict[prevIndex] {
                prevNode?.next = dict[nextIndex] as? ListNode
            }
            
            guard let res = dict[0] else { return nil }
            return res
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
