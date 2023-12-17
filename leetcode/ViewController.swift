//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = DesignFoodRatingSystem.FoodRatings(
            ["kimchi","miso","sushi","moussaka","ramen","bulgogi"],
            ["korean","japanese","japanese","greek","japanese","korean"],
            [9,12,8,15,14,7]
        )
        _ = s.highestRated("korean")
        _ = s.highestRated("japanese")
        s.changeRating("sushi", 16)
        _ = s.highestRated("japanese")
        s.changeRating("ramen", 16)
        _ = s.highestRated("japanese")
        
        /*
         
         [
            "FoodRatings",
            
            "highestRated",
            "highestRated",
            "changeRating",
            "highestRated",
            "changeRating",
            "highestRated"
         ]
         
         [
            [
                ["kimchi","miso","sushi","moussaka","ramen","bulgogi"],
                ["korean","japanese","japanese","greek","japanese","korean"],
                [9,12,8,15,14,7]
            ],
                
            ["korean"],
            ["japanese"],
            ["sushi",16],
            ["japanese"],
            ["ramen",16],
            ["japanese"]
         ]
         
         */
        
//        print(res)
    }
}

class QSort {
    func sort<T: Comparable>(_ array: [T]) -> [T] {
        guard array.count > 1 else { return array }
        let pivot = array[array.count / 2]
        let less = array.filter({ $0 < pivot })
        let greater = array.filter({ $0 > pivot })
        return sort(less) + [pivot] + sort(greater)
    }
}
