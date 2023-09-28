//
//  CourseSchedule.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 28.09.2023.
//

import Foundation

class CourseSchedule {
    class Solution {
        func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
            // dict (key - course, value - list of prerequisites)
            // dict (key - course, value - incoming degree)
            
            var incomingDegrees: [Int: Int] = [:]
            for i in 0 ..< numCourses {
                incomingDegrees[i] = 0
            }
            
            var coursesAndPrerequisites: [Int: [Int]] = [:]
            for i in 0 ..< prerequisites.count {
                let pair = prerequisites[i]
                let course = pair[0]
                let prerequisite = pair[1]
                
                if let existCourse = coursesAndPrerequisites[course] {
                    coursesAndPrerequisites[course] = existCourse + [prerequisite]
                } else {
                    coursesAndPrerequisites[course] = [prerequisite]
                }
                
                if let c = incomingDegrees[prerequisite] {
                    incomingDegrees[prerequisite] = c + 1
                } else {
                    incomingDegrees[prerequisite] = 1
                }
            }

            // looking for courses which have zero incoming degree
            var zeroIncomingDegreeCourses: [Int] = []
            for course in incomingDegrees.keys {
                guard let incomingDegree = incomingDegrees[course], incomingDegree == 0 else { continue }
                zeroIncomingDegreeCourses.append(course)
            }
            
            // go through these courses, decrease incoming degree for courses which are prerequisites
            var count = numCourses
            while zeroIncomingDegreeCourses.count > 0 {
                let zeroIncomingDegreeCourse = zeroIncomingDegreeCourses.removeFirst()
                count -= 1
                guard let prs = coursesAndPrerequisites[zeroIncomingDegreeCourse] else { continue }
                for i in 0 ..< prs.count {
                    let c = prs[i]
                    if let ind = incomingDegrees[c] {
                        incomingDegrees[c] = max(0, ind - 1)
                        
                        if incomingDegrees[c] == 0 {
                            zeroIncomingDegreeCourses.append(c)
                        }
                    }
                }
            }
            
            return count == 0
        }
    }
}
