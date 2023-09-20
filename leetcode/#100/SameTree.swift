//
//  SameTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.05.2021.
//

import Foundation

class SameTree {
    class Solution {
        func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            if p == nil && q == nil { return true }
            return p?.val == q?.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        }
    }
}
