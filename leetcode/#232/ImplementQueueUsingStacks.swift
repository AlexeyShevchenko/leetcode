//
//  ImplementQueueUsingStacks.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.01.2024.
//

import Foundation

class ImplementQueueUsingStacks {
    class MyQueue {
        
        private var stack: [Int]
        
        init() {
            stack = []
        }
        
        func push(_ x: Int) {
            stack.append(x)
        }
        
        func pop() -> Int {
            stack.removeFirst()
        }
        
        func peek() -> Int {
            stack.first ?? 0
        }
        
        func empty() -> Bool {
            stack.isEmpty
        }
    }
}
