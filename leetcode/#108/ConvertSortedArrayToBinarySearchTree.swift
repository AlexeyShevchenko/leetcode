//
//  ConvertSortedArrayToBinarySearchTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.11.2023.
//

import Foundation

class ConvertSortedArrayToBinarySearchTree {
    class Solution {
        func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
            if nums.isEmpty { return nil }
            return createNode(nums, 0, nums.count - 1)
        }
        
        private func createNode(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
            if left > right { return nil }
            let middle = left + (right - left) / 2
            let node: TreeNode = .init(
                nums[middle],
                createNode(nums, left, middle - 1),
                createNode(nums, middle + 1, right)
            )
            
            return node
        }
    }
}
// Time complexity: O(n)
// Space complexity: O(logn)
