//
//  DesignFoodRatingSystem.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 17.12.2023.
//

import Foundation

class DesignFoodRatingSystem {
    class FoodRatings {
        private var cuisinesAndFoods: [String: [String]] = [:]
        private var foodsAndCuisines: [String: String] = [:]
        private var foodsAndRatings: [String: Int] = [:]
        
        init(_ foods: [String], _ cuisines: [String], _ ratings: [Int]) {
            for i in 0 ..< cuisines.count {
                let cuisine = cuisines[i]
                let food = foods[i]
                let rating = ratings[i]
                
                foodsAndRatings[food] = rating
                
                if var cuisineFood = cuisinesAndFoods[cuisine] {
                    cuisineFood.append(food)
                    cuisinesAndFoods[cuisine] = cuisineFood
                } else {
                    cuisinesAndFoods[cuisine] = [food]
                }

                foodsAndCuisines[food] = cuisine
            }
        }
        
        func changeRating(_ food: String, _ newRating: Int) {
            foodsAndRatings[food] = newRating
            
            
        }
        
        func highestRated(_ cuisine: String) -> String {
            guard let foods = cuisinesAndFoods[cuisine] else { return "" }
            
            var maxRating: Int = .min
            var topFood = ""
            
            for i in 0 ..< foods.count {
                let food = foods[i]
                if let foodRating = foodsAndRatings[food] {
                    if foodRating > maxRating {
                        maxRating = foodRating
                        topFood = food
                    } else if foodRating == maxRating {
                        if food < topFood {
                            topFood = food
                        }
                    }
                }
            }
            
            return topFood
        }
    }
}
