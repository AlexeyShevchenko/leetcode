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
        /*[1]
        1
        []
        0
 */
        var num1 = [1]
        solution.merge(&num1, 1, [], 0)
    }
}
