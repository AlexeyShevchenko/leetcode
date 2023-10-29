//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit
/*
 Input: list1 = [0,1,2,3,4,5], a = 3, b = 4, list2 = [1000000,1000001,1000002]
 Output: [0,1,2,1000000,1000001,1000002,5]
 */
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let solution = MergeInBetweenLinkedLists.Solution()
        
        let list1: ListNode = .init(0)
        list1.next = .init(1)
        list1.next?.next = .init(2)
        list1.next?.next?.next = .init(3)
        list1.next?.next?.next?.next = .init(4)
        list1.next?.next?.next?.next?.next = .init(5)
        
        let list2: ListNode = .init(1000000)
        list2.next = .init(1000001)
        list2.next?.next = .init(1000002)

        let result = solution.mergeInBetween(list1, 3, 4, list2)
        print(result)
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
