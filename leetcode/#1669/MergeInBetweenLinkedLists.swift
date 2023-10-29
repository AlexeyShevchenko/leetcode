//
//  MergeInBetweenLinkedLists.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.10.2023.
//

import Foundation

class MergeInBetweenLinkedLists {
    class Solution {
        func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
            /*
             Input: list1 = [0,1,2,3,4,5], a = 3, b = 4, list2 = [1000000,1000001,1000002]
             Output: [0,1,2,1000000,1000001,1000002,5]
             */
            
            var currentList1 = list1
            var leftIndex = 1
            while let currentList1ForLoop = currentList1, leftIndex < a {
                currentList1 = currentList1ForLoop.next
                leftIndex += 1
            }
            let leftNode = currentList1
            
            while let currentList1ForLoop = currentList1, leftIndex < b + 2 {
                currentList1 = currentList1ForLoop.next
                leftIndex += 1
            }
            let rightNode = currentList1
            
            leftNode?.next = list2
            
            var currentList2 = list2
            var prev: ListNode?
            while let currentList2ForLoop = currentList2 {
                prev = currentList2ForLoop
                currentList2 = currentList2ForLoop.next
            }
            
            prev?.next = rightNode
            
            return list1
        }
    }
}
