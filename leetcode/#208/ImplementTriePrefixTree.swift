//
//  ImplementTriePrefixTree.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.01.2024.
//

import Foundation

class ImplementTriePrefixTree {
    class Trie {
        class TrieNode {
            var children: [Character: TrieNode] = [:]
            var isEndOfWord = false
        }
        
        var root: TrieNode
        
        init() {
            root = .init()
        }
        
        func insert(_ word: String) {
            var current = root
            for char in word {
                if current.children[char] == nil {
                    current.children[char] = .init()
                }
                if let childNode = current.children[char] {
                    current = childNode
                }
            }
            current.isEndOfWord = true
        }
        
        func search(_ word: String) -> Bool {
            var current = root
            for char in word {
                if current.children[char] == nil {
                    return false
                }
                if let charNode = current.children[char] {
                    current = charNode
                }
            }
            return current.isEndOfWord
        }
        
        func startsWith(_ prefix: String) -> Bool {
            var current = root
            for char in prefix {
                if current.children[char] == nil {
                    return false
                }
                if let charNode = current.children[char] {
                    current = charNode
                }
            }
            return true
        }
    }
}
