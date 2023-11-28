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
        let s = BinaryTreeZigzagLevelOrderTraversal.Solution()
        
        let root = TreeNode(3)
        let node9 = TreeNode(9)
        let node20 = TreeNode(20)
        let node15 = TreeNode(15)
        let node7 = TreeNode(7)
        
        root.left = node9
        root.right = node20
        node20.left = node15
        node20.right = node7

        let res = s.zigzagLevelOrder(root)
        print(res)
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

//        let head: ListNode = .init(1)
//        head.next = .init(2)
//        head.next?.next = .init(3)
//        head.next?.next?.next = .init(4)
//        head.next?.next?.next?.next = .init(5)
//        head.next?.next?.next?.next?.next = .init(6)

//let root: TreeNode? = .init(
//    3,
//    .init(
//        4,
//        .init(1),
//        .init(2)
//    ),
//    .init(5)
//)
//let subRoot: TreeNode? = .init(
//    4,
//    .init(1),
//    .init(2)
//)
