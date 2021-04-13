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
        let solution = MergeSortedArray.Solution()
        var num1 = [1,2,3,0,0,0]
        solution.merge(&num1, 3, [2,5,6], 3)
    }
}
