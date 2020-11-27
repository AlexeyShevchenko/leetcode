//
//  MaximumDepthOfBinaryTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import Foundation

public class TreeNode {

    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init() { self.val = 0; self.left = nil; self.right = nil; }

    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

/// https://leetcode.com/problems/maximum-depth-of-binary-tree/
class MaximumDepthOfBinaryTree {

    class Solution {

        func maxDepth(_ root: TreeNode?) -> Int {

            //Input: root = [3,9,20,null,null,15,7]
            // Output: 3
            //      3
            //     9 20

            return 0
        }
    }
}
