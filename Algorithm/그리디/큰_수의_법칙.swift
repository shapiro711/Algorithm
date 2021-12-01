//
//  큰_수의_법칙.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/01.
//

import Foundation

var lineArr = readLine()!.split(separator: " ").map { Int(String($0))!}

var n = lineArr[0]
var m = lineArr[1]
var k = lineArr[2]

var numbers = readLine()!.split(separator: " ").map { Int(String($0))!}

func solution() {
    var first = 0
    var second = 0
    
    for number in numbers {
        if number > first {
            second = first
            first = number
        } else if number > second {
            second = number
        }
    }
    
    sum(first: first, second: second, m: m, k: k)
}

func sum(first: Int, second: Int, m: Int, k: Int) {
    var result = 0
    var count = k
    for _ in 1...m {
        if count == 0 {
            result += second
            count = k
        } else {
            result += first
            count -= 1
        }
    }
    print(result)
}

solution()
