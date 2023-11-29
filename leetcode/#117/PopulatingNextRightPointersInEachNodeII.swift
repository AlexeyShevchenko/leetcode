//
//  PopulatingNextRightPointersInEachNodeII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.11.2023.
//

import Foundation

class PopulatingNextRightPointersInEachNodeII {
    class Solution {
        public class Node {
            public var val: Int
            public var left: Node?
            public var right: Node?
            public var next: Node?
            public init(_ val: Int) {
                self.val = val
                self.left = nil
                self.right = nil
                self.next = nil
            }
        }
        
        func connect(_ root: Node?) -> Node? {
            guard let root = root else { return root }
            var queue: [Node] = [root]
            
            while !queue.isEmpty {
                var currentLevel: [Node] = []
                
                for i in 0 ..< queue.count {
                    let node = queue[i]
                    
                    if let left = node.left {
                        currentLevel.append(left)
                    }
                    
                    if let right = node.right {
                        currentLevel.append(right)
                    }
                }
                
                queue = currentLevel
                
                if queue.count < 2 {
                    continue
                }
                
                for i in 1 ..< queue.count {
                    let currentNode = queue[i]
                    let prevNode = queue[i - 1]
                    prevNode.next = currentNode
                }
            }
            
            return root
        }
    }
}

extension PopulatingNextRightPointersInEachNodeII.Solution {
    static var root: Node? {
        let root = Node(1)
        root.left = Node(2)
        root.right = Node(3)
        root.left?.left = Node(4)
        root.left?.right = Node(5)
        root.right?.right = Node(7)
        
        return root
    }
}
