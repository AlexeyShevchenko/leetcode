//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit
/*
 Input: head = [7,9,6,6,7,8,3,0,9,5], k = 5
 Output: [7,9,6,6,8,7,3,0,9,5]
 */
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let s = SwappingNodesInLinkedList.Solution()
        let list1: ListNode = .init(7)
        list1.next = .init(9)
        list1.next?.next = .init(6)
        list1.next?.next?.next = .init(6)
        list1.next?.next?.next?.next = .init(7)
        list1.next?.next?.next?.next?.next = .init(8)
        list1.next?.next?.next?.next?.next?.next = .init(3)
        list1.next?.next?.next?.next?.next?.next?.next = .init(0)
        list1.next?.next?.next?.next?.next?.next?.next?.next = .init(9)
        list1.next?.next?.next?.next?.next?.next?.next?.next?.next = .init(5)
        let res = s.swapNodes(list1, 5)
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
