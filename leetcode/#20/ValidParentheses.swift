//
//  ValidParentheses.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 18.03.2021.
//

import Foundation

class ValidParentheses {
    class Solution {
        struct Stack<Element> {
            fileprivate var array: [Element] = []
            var isEmpty: Bool { return array.isEmpty }
            
            mutating func push(_ element: Element) {
                array.append(element)
            }
            
            mutating func pop() -> Element? {
                return array.popLast()
            }
            
            func peek() -> Element? {
                return array.last
            }
        }
        
        enum Bracket {
            case open, close
        }
        
        private let bracketDict: [String.Element: String.Element] = {
            let dict = [
                String.Element("}"): String.Element("{"),
                String.Element(")"): String.Element("("),
                String.Element("]"): String.Element("["),
            ]
            return dict
        }()
        
        func isValid(_ s: String) -> Bool {
            guard s.count % 2 == 0 else { return false }
            var stack = Stack<String.Element>()
            for char in s {
                let bracketType = bracket(char)
                switch bracketType {
                case .open: stack.push(char)
                case .close:
                    guard let stackTopElement = stack.peek(),
                          let openBracket = bracketDict[char],
                          stackTopElement == openBracket else {
                        return false
                    }
                    _ = stack.pop()
                case .none: return false
                }
            }
            return stack.isEmpty
        }
        
        private func bracket(_ element: String.Element) -> Bracket? {
            switch element {
            case "{", "(", "[": return .open
            case "}", ")", "]": return .close
            default: return nil
            }
        }
    }
}
