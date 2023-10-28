//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit
/*
 Input: head = [1,3,4,7,1,2,6]
 Output: [1,3,4,1,2,6]
 */
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let solution = RemoveLinkedListElements.Solution()
        /*
         Input: head = [1,2,6,3,4,5,6], val = 6
         Output: [1,2,3,4,5]
         */
        let head: ListNode = .init(7)
        head.next = .init(7)
        head.next?.next = .init(7)
        head.next?.next?.next = .init(7)
//        head.next?.next?.next?.next = .init(4)
//        head.next?.next?.next?.next?.next = .init(5)
//        head.next?.next?.next?.next?.next?.next = .init(6)
        let result = solution.removeElements(head, 7)
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
