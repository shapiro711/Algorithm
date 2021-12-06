//
//  왕실의 나이트.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var firstLine = readLine()!
var checkList = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [2, 1], [1, 2], [2, -1], [1, -2]]
var start = firstLine.unicodeScalars.map{ String($0) }
                                                 
func solution() {
    let arr = [convert(alpha: start[0]), Int(start[1])!]
    var count = 0
    for checkList in checkList {
        let x = arr[0] + checkList[0]
        let y = arr[1] + checkList[1]
        
        if x < 1 || x > 8 || y < 1 || y > 8 {
            continue
        }
        
        count += 1
    }
    print(count)
}

func convert(alpha: String) -> Int {
    switch alpha {
    case "a":
        return 1
    case "b":
        return 2
    case "c":
        return 3
    case "d":
        return 4
    case "e":
        return 5
    case "f":
        return 6
    case "g":
        return 7
    case "h":
        return 8
    default:
        return 0
    }
}

solution()
