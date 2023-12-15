//
//  DestinationCity.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.12.2023.
//

import Foundation

class DestinationCity {
    class Solution {
        func destCity(_ paths: [[String]]) -> String {
            var dict: [String: String] = [:]
            
            for i in 0 ..< paths.count {
                let path = paths[i]
                let fromCity = path[0]
                let toCity = path[1]
                dict[fromCity] = toCity
            }
            
            for fromCity in dict.keys {
                if let toCity = dict[fromCity], dict[toCity] == nil {
                    return toCity
                }
            }
            
            return ""
        }
    }
}
