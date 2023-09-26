//
//  GenerateParentheses.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 26.09.2023.
//

import Foundation

class GenerateParentheses {
    class Solution {
        func generateParenthesis(_ n: Int) -> [String] {
            var res: [String] = []
            
            func backtrack(currentString: String, open: Int, close: Int, max: Int) {
                if currentString.count == max * 2 {
                    res.append(currentString)
                    return
                }
                
                if open < max {
                    backtrack(currentString: currentString + "(", open: open + 1, close: close, max: max)
                }
                if close < open {
                    backtrack(currentString: currentString + ")", open: open, close: close + 1, max: max)
                }
            }
            
            backtrack(currentString: "", open: 0, close: 0, max: n)
            
            return res
        }
    }
}
