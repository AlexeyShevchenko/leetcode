//
//  SimplifyPath.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.01.2024.
//

import Foundation

class SimplifyPath {
    class Solution {
        func simplifyPath(_ path: String) -> String {
            let parts: [String] = path.split(separator: "/").compactMap({ .init($0) })
            var usefulParts: [String] = []
            
            for i in 0 ..< parts.count {
                let part = parts[i]
                if part == "." || part.isEmpty {
                    continue
                } else if part == ".." {
                    if !usefulParts.isEmpty {
                        _ = usefulParts.popLast()
                    }
                } else {
                    usefulParts.append(part)
                }
            }
            
            return "/\(usefulParts.joined(separator: "/"))"
        }
    }
}
