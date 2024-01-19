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
            let bank: Set<String> = .init(bank)
            let geneParts: [Character] = [
                .init("A"),
                .init("C"),
                .init("G"),
                .init("T"),
            ]
            
            while !queue.isEmpty {
                var currentLevel: [String] = []
                
                for i in 0 ..< queue.count {
                    let gene = queue[i]
                    if gene == endGene { return steps }
                    
                    for genePartIndex in 0 ..< gene.count {
                        let preIndex = gene.index(gene.startIndex, offsetBy: genePartIndex)
                        let preStr = gene[..<preIndex]
                        let postIndex = gene.index(gene.startIndex, offsetBy: genePartIndex + 1)
                        let postStr = gene[postIndex...]
                        
                        for genePart in geneParts {
                            let geneCandidate = "\(preStr)\(genePart)\(postStr)"
                            guard bank.contains(geneCandidate), !seen.contains(geneCandidate) else { continue }
                            currentLevel.append(geneCandidate)
                            seen.insert(geneCandidate)
                        }
                    }
                }
                
                queue = currentLevel
                steps += 1
            }
            
            return -1
        }
    }
}
