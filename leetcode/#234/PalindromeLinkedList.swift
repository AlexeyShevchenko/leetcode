//
//  PalindromeLinkedList.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.10.2023.
//

import Foundation

class PalindromeLinkedList {
    class Solution {
        func isPalindrome(_ head: ListNode?) -> Bool {
            var stack: [ListNode] = []
            var current = head
            while let currentForLoop = current {
                stack.append(currentForLoop)
                current = current?.next
            }
            
            let middle = stack.count / 2
            var index = 0
            while index < middle {
                let trailIndex = stack.count - index - 1
                if stack[index].val != stack[trailIndex].val {
                    return false
                }
                index += 1
            }
            
            return true
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
