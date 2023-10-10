//
//  RansomNote.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.10.2023.
//

import Foundation

class RansomNote {
    class Solution {
        func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
            let magazineArray = Array(magazine)
            var magazineDict: [String.Element: Int] = [:]
            
            for i in 0 ..< magazineArray.count {
                let s = magazineArray[i]
                if let val = magazineDict[s] {
                    magazineDict[s] = val + 1
                } else {
                    magazineDict[s] = 1
                }
            }
            
            let ransomNoteArray = Array(ransomNote)
            
            for i in 0 ..< ransomNoteArray.count {
                let s = ransomNoteArray[i]
                if let val = magazineDict[s] {
                    let newVal = val - 1
                    if newVal > 0 {
                        magazineDict[s] = newVal
                    } else {
                        magazineDict.removeValue(forKey: s)
                    }
                } else {
                    return false
                }
            }
            
            return true
        }
    }
}

// Time complexity: O(n)
// Space comlexity: O(n)
