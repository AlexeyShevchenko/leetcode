//
//  GroupAnagrams.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 06.02.2024.
//

import Foundation

class GroupAnagrams {
    class Solution {
        func groupAnagrams(_ strs: [String]) -> [[String]] {
            var res: [[String]] = []
            var dict: [String: [String]] = [:]
            for i in 0 ..< strs.count {
                let str = strs[i]
                let sortedStr = String(str.sorted())
                
                if let strs = dict[sortedStr] {
                    dict[sortedStr] = strs + [str]
                } else {
                    dict[sortedStr] = [str]
                }
            }
            
            for key in dict.keys {
                guard let strs = dict[key] else { continue }
                res.append(strs)
            }
            
            return res
        }
    }
}
