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
        let s = FindFirstAndLastPositionOfElementInSortedArray.Solution()
        let res = s.searchRange([5,7,7,8,8,10], 6)
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
