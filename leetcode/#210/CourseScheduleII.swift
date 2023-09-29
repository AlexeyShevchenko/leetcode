//
//  CourseScheduleII.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 29.09.2023.
//

import Foundation

class CourseScheduleII {
    class Solution {
        func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
            // prerequisites for course
            // [[1,0], [2,0], [3,1], [3,2]]
            var coursePrerequisites: [[Int]] = .init(repeating: [Int](), count: numCourses)
            // incoming degrees
            var incomingDegrees: [Int] = .init(repeating: 0, count: numCourses)
            for i in 0 ..< prerequisites.count {
                let prerequisite = prerequisites[i]
                let dependentCourse = prerequisite[0]
                let prerequisiteCourse = prerequisite[1]
                coursePrerequisites[dependentCourse].append(prerequisiteCourse)
                incomingDegrees[prerequisiteCourse] += 1
            }
            
            var zeroIncomingDegreeCourses: Set<Int> = .init()
            for i in 0 ..< incomingDegrees.count {
                let val = incomingDegrees[i]
                if val == 0 {
                    zeroIncomingDegreeCourses.insert(i)
                }
            }
            
            var counter = numCourses
            var res: [Int] = []
            while zeroIncomingDegreeCourses.count > 0 {
                guard let course = zeroIncomingDegreeCourses.popFirst() else { continue }
                counter -= 1
                res.append(course)
                let prerequisites = coursePrerequisites[course]
                for i in 0 ..< prerequisites.count {
                    let p = prerequisites[i]
                    incomingDegrees[p] -= 1
                    if incomingDegrees[p] == 0 {
                        zeroIncomingDegreeCourses.insert(p)
                    }
                }
            }
            
            if counter == 0 {
                return res.reversed()
            } else {
                return []
            }
        }
    }
}
