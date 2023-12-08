//
//  MaximumAverageSubtree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 08.12.2023.
//

import Foundation

class MaximumAverageSubtree {
    class Solution {
        func maximumAverageSubtree(_ root: TreeNode?) -> Double {
            var average: Double = 0
            
            func dfs(_ node: TreeNode?) -> (valuesSum: Int, nodesCount: Int) {
                guard let node = node else { return (valuesSum: 0, nodesCount: 0) }
                
                let leftRes = dfs(node.left)
                let rightRes = dfs(node.right)
                
                let totalValuesSum = leftRes.valuesSum + rightRes.valuesSum + node.val
                let totalNodesCount = leftRes.nodesCount + rightRes.nodesCount + 1
                
                let currentAverage = Double(totalValuesSum) / Double(totalNodesCount)
                average = max(average, currentAverage)
                
                return (valuesSum: totalValuesSum, nodesCount: totalNodesCount)
            }
            
            _ = dfs(root)
            
            return average
        }
    }
}
