//
//  NaryTreePostorderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 22.11.2023.
//

import Foundation

class NaryTreePostorderTraversal {
    class Solution {
        class Node {
            var val: Int
            var children: [Node]
            init(_ val: Int) {
                self.val = val
                self.children = []
            }
        }
        
        func postorder(_ root: Node?) -> [Int] {
            var res: [Int] = []
            guard let root = root else { return res }
            
            func dfs(_ node: Node?) {
                guard let node = node else { return }
                
                for i in 0 ..< node.children.count {
                    let childNode = node.children[i]
                    dfs(childNode)
                }
                
                res.append(node.val)
            }
            
            dfs(root)
            
            return res
        }
    }
}
