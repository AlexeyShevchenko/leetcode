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
        let solution = RotateList.Solution()
        
        //[1,2,3,4,5]
        let listNode4: ListNode = .init(5)
        let listNode3: ListNode = .init(4)
        let listNode2: ListNode = .init(3)
        let listNode1: ListNode = .init(2)
        let head: ListNode = .init(1)
        
        head.next = listNode1
        listNode1.next = listNode2
        listNode2.next = listNode3
        listNode3.next = listNode4
        listNode4.next = nil
        
        let result = solution.rotateRight(head, 2)
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
