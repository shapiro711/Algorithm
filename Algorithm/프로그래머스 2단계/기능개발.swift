//
//  기능개발.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/16.
//

import Foundation

var testprogresses = readLine()!.split(separator: " ").map { Int(String($0))! }
var testspeeds = readLine()!.split(separator: " ").map { Int(String($0))! }

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var currentProgresses = progresses
    var tempProgresses = currentProgresses
    var currentspeeds = speeds
    var result = [Int]()
    var canRelease = false

    while !currentProgresses.isEmpty {
        for i in 0 ..< currentProgresses.count {
            currentProgresses[i] = currentProgresses[i]  + currentspeeds[i]
        }
        
        if currentProgresses.first! >= 100 {
            canRelease = true
        } else {
            canRelease = false
        }
        
        if canRelease {
            var count = 0
            for i in 0 ..< currentProgresses.count {
                if currentProgresses[i] >= 100 {
                    count += 1
                    tempProgresses.remove(at: 0)
                    currentspeeds.remove(at: 0)
                } else {
                    break
                }
            }
            currentProgresses = tempProgresses
            result.append(count)
        }
    }
    
    return result
    
}

print(solution(testprogresses, testspeeds))
