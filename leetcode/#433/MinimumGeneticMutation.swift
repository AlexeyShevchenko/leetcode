//
//  MinimumGeneticMutation.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.01.2024.
//

import Foundation

class MinimumGeneticMutation {
    class Solution {
        func minMutation(_ startGene: String, _ endGene: String, _ bank: [String]) -> Int {
            var queue: [String] = [startGene]
            var seen: Set<String> = .init([startGene])
            var steps = 0
            var bankSet: Set<String> = .init(bank)
            let choices: [Character] = [
                .init("A"),
                .init("C"),
                .init("G"),
                .init("T"),
            ]
            
            while let gene = queue.popLast() {
                if gene == endGene {
                    return steps
                }
                
                for i in 0 ..< choices.count {
                    let choice = choices[i]
                    
                    for i in 0 ..< gene.count {
                        let preIndex = gene.index(gene.startIndex, offsetBy: i)
                        let preStr = gene[..<preIndex]
                        let postIndex = gene.index(gene.startIndex, offsetBy: i + 1)
                        let postStr = gene[postIndex...]
                        
                        let candidate = "\(preStr)\(choice)\(postStr)"
                        
                        if !seen.contains(candidate), bankSet.contains(candidate) {
                            seen.insert(candidate)
                            queue.append(candidate)
                        }
                    }
                }
                
                steps += 1
            }
            
            return -1
        }
    }
}
