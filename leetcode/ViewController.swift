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
        // Do any additional setup after loading the view.

        let solution = VerifyingAnAlienDictionary.Solution()
        let result = solution.isAlienSorted(["word", "world", "row"], "worldabcefghijkmnpqstuvxyz")
        print(result)
    }
}
//["word","world","row"]
//"worldabcefghijkmnpqstuvxyz"
