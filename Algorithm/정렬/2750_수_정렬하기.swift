//
//  2750_수_정렬하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/30.
//

import Foundation

var n = Int(readLine()!)!
var numbers: [Int] = []

for _ in 1...n {
    var number = Int(readLine()!)!
    numbers.append(number)
}

func solution() {
    for i in stride(from: n-1, through: 1, by: -1) {
        findMax(a: 0, b: i)
    }
    
    for number in numbers{
        print(number)
    }
}

func findMax(a:Int, b:Int) {
    for i in a...b {
        if numbers[i] >= numbers[b] {
            var tmp = numbers[b]
            numbers[b] = numbers[i]
            numbers[i] = tmp
        }
    }
}

solution()
