//
//  ValidateBinaryTreeNodes.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 10.12.2023.
//

import Foundation

class ValidateBinaryTreeNodes {
    class Solution {
        func validateBinaryTreeNodes(_ n: Int, _ leftChild: [Int], _ rightChild: [Int]) -> Bool {
            // should be 1 root
            // no cycles
            // each node should be reached from root
            let root = findRoot(n, leftChild, rightChild)
            guard root != -1 else { return false }
            
            var seen: Set<Int> = .init([root])
            var stack: [Int] = [root]
            
            while !stack.isEmpty {
                let node = stack.removeFirst()
                let nodeLeft = leftChild[node]
                let nodeRight = rightChild[node]
                let leftAndRight = [
                    nodeLeft,
                    nodeRight,
                ]
                
                for i in 0 ..< leftAndRight.count {
                    let child = leftAndRight[i]
                    if seen.contains(child) {
                        return false
                    }
                    
                    if child != -1 {
                        stack.append(child)
                        seen.insert(child)
                    }
                }
            }
            
            return n == seen.count
        }
        
        private func findRoot(
            _ n: Int,
            _ leftChild: [Int],
            _ rightChild: [Int]
        ) -> Int {
            // root has no parents
            // root is not in list of children
            
            let leftAndRight = leftChild + rightChild
            var chidren: Set<Int> = .init()
            for i in 0 ..< leftAndRight.count {
                let child = leftAndRight[i]
                chidren.insert(child)
            }
            
            for i in 0 ..< n {
                if !chidren.contains(i) {
                    return i
                }
            }
            
            return -1
        }
    }
}
