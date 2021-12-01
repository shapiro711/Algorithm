//
//  숫자_카드_게임.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/01.
//

import Foundation

var line = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = line[0]
var m = line[1]

var cards = [[Int]]()

for i in 0...n-1 {
    var line = readLine()!.split(separator: " ").map { Int(String($0))! }
    cards.append(line)
}

func solution() {
    var results = [Int]()
    for numbers in cards {
        var arr = numbers.sorted()
        results.append(arr[0])
    }
    results.sort(by: >)
    print(results[0])
}

solution()
