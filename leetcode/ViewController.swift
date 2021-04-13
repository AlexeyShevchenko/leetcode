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
        var num1 = [1]
        solution.merge(&num1, 1, [], 0)
    }
}

/*
 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 */
