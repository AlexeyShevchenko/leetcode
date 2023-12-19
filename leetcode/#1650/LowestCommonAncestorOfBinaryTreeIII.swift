//
//  LowestCommonAncestorOfBinaryTreeIII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 19.12.2023.
//

import Foundation

class LowestCommonAncestorOfBinaryTreeIII {
    class Solution {
        public class Node {
            public var val: Int
            public var left: Node?
            public var right: Node?
            public var parent: Node?
            public init(_ val: Int) {
                self.val = val
                self.left = nil
                self.right = nil
                self.parent = nil
            }
        }

        func lowestCommonAncestor(_ p: Node?,_ q: Node?) -> Node? {
            var p = p
            var pathFromPToRoot: Set<Int> = .init()
            
            while p != nil {
                if let p = p {
                    pathFromPToRoot.insert(p.val)
                }
                p = p?.parent
            }
            
            var q = q
            while q != nil {
                if let q = q, pathFromPToRoot.contains(q.val) {
                    return q
                }
                q = q?.parent
            }
            
            return nil
        }
    }
}
