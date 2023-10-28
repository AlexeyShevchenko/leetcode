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
        let solution = PalindromeLinkedList.Solution()
        
        let headA: ListNode = .init(1)
        headA.next = .init(2)
        headA.next?.next = .init(2)
        headA.next?.next?.next = .init(1)
        
        let result = solution.isPalindrome(headA)
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
