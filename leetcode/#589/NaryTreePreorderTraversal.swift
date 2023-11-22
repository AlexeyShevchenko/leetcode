//
//  NaryTreePreorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.11.2023.
//

import Foundation

class NaryTreePreorderTraversal {
    class Solution {
        class Node {
            var val: Int
            var children: [Node]
            init(_ val: Int) {
                self.val = val
                self.children = []
            }
        }
        
        func preorder(_ root: Node?) -> [Int] {
            var res: [Int] = []
            guard let root = root else { return res }
            
            func dfs(_ node: Node?) {
                guard let node = node else { return }
                res.append(node.val)
                
                for i in 0 ..< node.children.count {
                    let childNode = node.children[i]
                    dfs(childNode)
                }
            }
            
            dfs(root)
            
            return res
        }
    }
}
