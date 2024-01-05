//
//  ValidSudoku.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 05.01.2024.
//

import Foundation

class ValidSudoku {
    class Solution {
        func isValidSudoku(_ board: [[Character]]) -> Bool {
            let empty: Character = "."
            
            for row in 0 ..< 9 {
                var set: Set<Character> = .init()
                for column in 0 ..< 9 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            for column in 0 ..< 9 {
                var set: Set<Character> = .init()
                for row in 0 ..< 9 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            var set: Set<Character> = .init()
            
            for row in 0 ..< 3 {
                for column in 0 ..< 3 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 0 ..< 3 {
                for column in 3 ..< 6 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 0 ..< 3 {
                for column in 6 ..< 9 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 3 ..< 6 {
                for column in 0 ..< 3 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 3 ..< 6 {
                for column in 3 ..< 6 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 3 ..< 6 {
                for column in 6 ..< 9 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 6 ..< 9 {
                for column in 0 ..< 3 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 6 ..< 9 {
                for column in 3 ..< 6 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            set = .init()
            
            for row in 6 ..< 9 {
                for column in 6 ..< 9 {
                    let char = board[row][column]
                    guard char != empty else { continue }
                    if set.contains(char) {
                        return false
                    }
                    set.insert(char)
                }
            }
            
            return true
        }
    }
}
