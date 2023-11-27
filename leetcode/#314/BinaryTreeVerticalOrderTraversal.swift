//
//  BinaryTreeVerticalOrderTraversal.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2023.
//

import Foundation

class BinaryTreeVerticalOrderTraversal {
    class Solution {
        func verticalOrder(_ root: TreeNode?) -> [[Int]] {
            var res: [[Int]] = []
            guard let root = root else { return res }
            
            var queue: [(node: TreeNode, columnIndex: Int)] = [(node: root, columnIndex: 0)]
            var columnAndItsNodes: [Int: [TreeNode]] = [0: [root]]
            
            while !queue.isEmpty {
                var currentLevel: [(node: TreeNode, columnIndex: Int)] = []
                
                for i in 0 ..< queue.count {
                    let nodeAndItsColumnIndex = queue[i]
                    let parentColumnIndex = nodeAndItsColumnIndex.columnIndex
                    
                    if let leftChild = nodeAndItsColumnIndex.node.left {
                        let leftChildColumnIndex = parentColumnIndex - 1
                        currentLevel.append((node: leftChild, columnIndex: leftChildColumnIndex))

                        if let nodesAtColumn = columnAndItsNodes[leftChildColumnIndex] {
                            columnAndItsNodes[leftChildColumnIndex] = nodesAtColumn + [leftChild]
                        } else {
                            columnAndItsNodes[leftChildColumnIndex] = [leftChild]
                        }
                    }
                    
                    if let rightChild = nodeAndItsColumnIndex.node.right {
                        let rightChildColumnIndex = parentColumnIndex + 1
                        currentLevel.append((node: rightChild, columnIndex: rightChildColumnIndex))
                        
                        if let nodesAtColumn = columnAndItsNodes[rightChildColumnIndex] {
                            columnAndItsNodes[rightChildColumnIndex] = nodesAtColumn + [rightChild]
                        } else {
                            columnAndItsNodes[rightChildColumnIndex] = [rightChild]
                        }
                    }
                }
                
                queue = currentLevel
            }
            
            let sortedColumns = columnAndItsNodes.keys.sorted()
            
            for i in 0 ..< sortedColumns.count {
                let column = sortedColumns[i]
                if let nodes = columnAndItsNodes[column] {
                    let values = nodes.map { $0.val }
                    res.append(values)
                }
            }
            
            return res
        }
    }
}
