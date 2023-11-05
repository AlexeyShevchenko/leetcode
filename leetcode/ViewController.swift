//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit

class ViewController: UIViewController {
    /*
     Input: nums = [3,1,-2,-5,2,-4]
     Output: [3,-2,1,-5,2,-4]
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        let s = SortList.Solution()
        //4,2,1,3]
        let head: ListNode = .init(4)
        head.next = .init(2)
        head.next?.next = .init(1)
        head.next?.next?.next = .init(3)
        let res = s.sortList(head)
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
