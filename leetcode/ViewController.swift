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
        let s = PartitionList.Solution()
        let head: ListNode = .init(1)
        head.next = .init(4)
        head.next?.next = .init(3)
        head.next?.next?.next = .init(2)
        head.next?.next?.next?.next = .init(5)
        head.next?.next?.next?.next?.next = .init(2)
        let res = s.partition(head, 3)
        print(res ?? "n\\a")
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
