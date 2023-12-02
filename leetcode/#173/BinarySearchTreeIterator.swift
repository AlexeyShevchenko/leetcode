//
//  BinarySearchTreeIterator.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 02.12.2023.
//

import Foundation

class BinarySearchTreeIterator {
    class BSTIterator {
        private var stack: [Int] = []
        private var index = -1
        
        init(_ root: TreeNode?) {
            inorder(root)
        }
        
        func next() -> Int {
            index += 1
            return stack[index]
        }
        
        func hasNext() -> Bool {
            let i = index + 1
            return stack.count > i
        }
        
        private func inorder(_ node: TreeNode?) {
            guard let node = node else { return }
            inorder(node.left)
            stack.append(node.val)
            inorder(node.right)
        }
    }
}
