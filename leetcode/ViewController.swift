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
        let s = ValidateBinarySearchTree.Solution()
        
        // Уровень 1
        let root = TreeNode(8)
        
        // Уровень 2
        root.left = TreeNode(3)
        root.right = TreeNode(10)
        
        // Уровень 3
        root.left?.left = TreeNode(1)
        root.left?.right = TreeNode(6)
        root.right?.right = TreeNode(14)
        
        // Уровень 4
        root.left?.right?.left = TreeNode(4)
        root.left?.right?.right = TreeNode(7)

        let res = s.isValidBST(root)
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
