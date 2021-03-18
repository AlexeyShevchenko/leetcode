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
        let solution = ReverseLinkedList.Solution()
        //[1,2,3,4,5]
        typealias Node = ReverseLinkedList.ListNode
//        let node5 = Node(5)
//        let node4 = Node(4, node5)
//        let node3 = Node(3, node4)
//        let node2 = Node(2, node3)
        let node2 = Node(2, nil)
        let node1 = Node(1, node2)
        let result = solution.reverseList(node1)
        print(result)
    }
}
