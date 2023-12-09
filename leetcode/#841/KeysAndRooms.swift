//
//  KeysAndRooms.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.12.2023.
//

import Foundation

class KeysAndRooms {
    class Solution {
        func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
            var availableKeys: [Int] = [0]
            var visitedRooms: Set<Int> = .init([0])
            
            while !availableKeys.isEmpty {
                let roomKey = availableKeys.removeFirst()
                let keysInRoom = rooms[roomKey]
                for i in 0 ..< keysInRoom.count {
                    let key = keysInRoom[i]
                    if !visitedRooms.contains(key) {
                        availableKeys.append(key)
                        visitedRooms.insert(key)
                    }
                }
            }
            
            for i in 0 ..< rooms.count {
                if !visitedRooms.contains(i) { return false }
            }
            
            return true
        }
    }
}
