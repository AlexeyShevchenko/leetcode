//
//  SearchInRotatedSortedArrayII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 12.11.2023.
//

import Foundation

class SearchInRotatedSortedArrayII {
    class Solution {
        func search(_ nums: [Int], _ target: Int) -> Bool {
            var left = 0
            var right = nums.count - 1
            
            while left <= right {
                let midIndex = left + (right - left) / 2
                let midNum = nums[midIndex]
                
                if midNum == target {
                    return true
                }

                if nums[left] < midNum {
                    if nums[left] <= target, target < midNum {
                        right = midIndex - 1
                    } else {
                        left = midIndex + 1
                    }
                } else if nums[left] > midNum {
                    if midNum < target, target <= nums[right] {
                        left = midIndex + 1
                    } else {
                        right = midIndex - 1
                    }
                } else {
                    left += 1
                }
            }
            
            return false
        }
    }
}

/*
 
 var left = 0
 var right = nums.count - 1
 
 while left <= right {
     let mid = (left + right) / 2
     
     if nums[mid] == target {
         return true
     }
     
     // Если левая половина отсортирована
     if nums[left] < nums[mid] {
         if nums[left] <= target && target < nums[mid] {
             right = mid - 1
         } else {
             left = mid + 1
         }
     }
     // Если правая половина отсортирована
     else if nums[left] > nums[mid] {
         if nums[mid] < target && target <= nums[right] {
             left = mid + 1
         } else {
             right = mid - 1
         }
     }
     // Обработка случая, когда элементы повторяются
     else {
         left += 1
     }
 }
 
 return false
 
 */
