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
        let solution = LongestCommonPrefix.Solution()
        let prefix = solution.longestCommonPrefix([""])
        print(prefix)
    }
}
