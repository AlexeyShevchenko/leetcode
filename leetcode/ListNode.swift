//
//  ListNode.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 15.09.2023.
//

public class ListNode {
    public var val: Int
    public var next: ListNode? // <-- change
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
