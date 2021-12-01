//
//  1이_될_때까지.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/01.
//

import Foundation

var line = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = line[0]
var k = line[1]

func solution() -> Int {
    var count = 0
    var result = n
    
    while result != 1 {
        if result % k == 0 {
            result = result / k
            count += 1
        } else {
            result -= 1
            count += 1
        }
    }
    return count
}

print(solution())
