//
//  ConvertBinaryNumberInLinkeListToInteger.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.10.2023.
//

import Foundation

class ConvertBinaryNumberInLinkeListToInteger {
    class Solution {
        func getDecimalValue(_ head: ListNode?) -> Int {
            var stack: [ListNode] = []
            var current = head
            
            while current != nil {
                if let c = current {
                    stack.append(c)
                }
                current = current?.next
            }
            
            let result = stack.reduce(0) { result, bit in
                return (result << 1) | bit.val
            }

            return result
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(n)
