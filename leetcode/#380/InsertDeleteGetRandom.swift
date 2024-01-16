//
//  InsertDeleteGetRandom.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 16.01.2024.
//

import Foundation

class InsertDeleteGetRandom {
    class RandomizedSet {
        private var set: Set<Int>
        
        init() {
            set = .init()
        }
        
        func insert(_ val: Int) -> Bool {
            let afterInsert = set.insert(val)
            return afterInsert.inserted
        }
        
        func remove(_ val: Int) -> Bool {
            guard let _ = set.remove(val) else { return false }
            return true
        }
        
        func getRandom() -> Int {
            set.randomElement() ?? 0
        }
    }
}
