//
//  10989_수_정렬하기-3.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/08.
//

import Foundation

var n  = Int(readLine()!)!
var numbers = [Int]()
var arr = Array(repeating: 0, count: n)

for i in 0 ..< n {
    var line = Int(readLine()!)!
    numbers.append(line)
}

func solution() {
    for number in numbers {
        arr[number] += 1
    }
    
    for i in 0 ..< n {
        for number in 0 ..< arr[i] {
            print(i)
        }
    }
}

solution()
