//
//  DesignFoodRatingSystem.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.12.2023.
//

import Foundation

//class DesignFoodRatingSystem {

struct SortedArray<T: Comparable> {
    private var array: [T]
    var count: Int {
        array.count
    }
    
    init(_ array: [T]? = []) {
        self.array = []
        for element in array ?? [] {
            self.insert(element)
        }
    }
    
    mutating func insert(_ element: T) {
        let i = bisect_right(element)
        array.insert(element, at: i)
    }
    
    mutating func remove(_ value: T) {
        let i = bisect_right(value) - 1
        array.remove(at: i)
    }
    
    private func bisect_right(_ target: T) -> Int {
        var (low, high) = (0, count)
        while low < high {
            let middle = low + (high - low) / 2
            if array[middle] <= target {
                low = middle + 1
            } else {
                high = middle
            }
        }
        return low
    }
    
    func min() -> T? {
        array.min()
    }
}

struct FoodRating: Comparable {
    let name: String
    let rating: Int
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        (lhs.rating, lhs.name) < (rhs.rating, rhs.name)
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        (lhs.rating, lhs.name) == (rhs.rating, rhs.name)
    }
}

class FoodRatings {
    var foodRating: [String: SortedArray<FoodRating>]
    var foodStat: [String: (String, Int)]
    
    init(_ foods: [String], _ cuisines: [String], _ ratings: [Int]) {
        foodRating = [:]
        foodStat = [:]
        for (cuisine, (food, rating)) in zip(cuisines, zip(foods, ratings)) {
            foodRating[cuisine, default: SortedArray()].insert(FoodRating(name: food, rating: -rating))
            foodStat[food] = (cuisine, -rating)
        }
    }
    
    func changeRating(_ food: String, _ newRating: Int) {
        let (cuisine, rating) = foodStat[food]!
        foodStat[food] = (cuisine, -newRating)
        foodRating[cuisine]!.remove(FoodRating(name: food, rating: rating))
        foodRating[cuisine]!.insert(FoodRating(name: food, rating: -newRating))
    }
    
    func highestRated(_ cuisine: String) -> String {
        foodRating[cuisine]!.min()!.name
    }
}
//}
