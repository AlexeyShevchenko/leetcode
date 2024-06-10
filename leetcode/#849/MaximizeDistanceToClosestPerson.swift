//
//  MaximizeDistanceToClosestPerson.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 09.06.2024.
//

import Foundation

class MaximizeDistanceToClosestPerson {
    class Solution {
        func maxDistToClosest(_ seats: [Int]) -> Int {
            var busyPlaceIndexes: [Int] = []
            
            for i in 0 ..< seats.count {
                let seat = seats[i]
                if seat == 1 {
                    busyPlaceIndexes.append(i)
                }
            }
            
            if busyPlaceIndexes.isEmpty {
                return 0
            } else if busyPlaceIndexes.count == 1,
                      let busyPlaceIndex = busyPlaceIndexes.first {
                return max(
                    busyPlaceIndex,
                    seats.count - busyPlaceIndex - 1
                )
            } else {
                let leftTrail = busyPlaceIndexes[0]
                let rightTrail = seats.count - busyPlaceIndexes[busyPlaceIndexes.count - 1] - 1
                let maxTrail = max(leftTrail, rightTrail)
                var maxDistance = 0
                
                for right in 1 ..< busyPlaceIndexes.count {
                    let rSeatIndex = busyPlaceIndexes[right]
                    let lSeatIndex = busyPlaceIndexes[right - 1]
                    let middleIndex = lSeatIndex + (rSeatIndex - lSeatIndex) / 2
                    let currentMin = min(
                        middleIndex - lSeatIndex,
                        rSeatIndex - middleIndex
                    )
                    maxDistance = max(maxDistance, currentMin)
                }
                
                return max(maxTrail, maxDistance)
            }
        }
    }
}
