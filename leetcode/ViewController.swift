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
        let solution = Search2dMatrix.Solution()
        let exist = solution.searchMatrix(
            [
                [1,3,5,7],
                [10,11,16,20],
                [23,30,34,60],
            ], 13
        )
        print(exist)
        let exist1 = solution.searchMatrix(
            [
                [1],
            ], -1
        )
        print(exist1)
        let exist2 = solution.searchMatrix(
            [
                [1],
                [3],
            ], -3
        )
        print(exist2)
        let exist3 = solution.searchMatrix(
            [
                [1,3,5,7],
                [10,11,16,20],
                [23,30,34,50],
            ],
            30
        )
        print(exist3)
        let exist4 = solution.searchMatrix(
            [
                [1,1]
            ],
            2
        )
        print(exist4)
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
