//
//  DesignAddAndSearchWordsDataStructure.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.01.2024.
//

import Foundation

class DesignAddAndSearchWordsDataStructure {
    class WordDictionary {
        class TrieNode {
            var children: [Character: TrieNode] = [:]
            var isEndOfWord = false
        }
        
        var root: TrieNode
        
        init() {
            root = .init()
        }
        
        func addWord(_ word: String) {
            var current = root
            for char in word {
                if current.children[char] == nil {
                    current.children[char] = .init()
                }
                if let charNode = current.children[char] {
                    current = charNode
                }
            }
            current.isEndOfWord = true
        }
        
        func search(_ word: String) -> Bool {
            dfs(root, .init(word), 0)
        }
        
        private func dfs(_ node: TrieNode, _ word: [Character], _ index: Int) -> Bool {
            if word.count == index { return node.isEndOfWord }
            let char = word[index]
            
            if char == "." {
                for key in node.children.keys {
                    guard let charNode = node.children[key] else { continue }
                    guard dfs(charNode, word, index + 1) else { continue }
                    return true
                }
            } else {
                guard let charNode = node.children[char] else { return false }
                return dfs(charNode, word, index + 1)
            }
            
            return false
        }
    }
}
