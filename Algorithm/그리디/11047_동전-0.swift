//
//  11047_동전-0.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/22.
//

import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var target = firstLine[1]
var result = 0
var moneyList = [Int]()

for _ in 0 ..< firstLine[0] {
    let line = Int(readLine()!)!
    moneyList.append(line)
}


func solution() {
    moneyList.reverse()
    
    while target != 0 {
        for money in moneyList {
            if target >= money {
                target -= money
                result += 1
                break
            }
        }
    }
    
    print(result)
}

solution()

