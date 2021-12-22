//
//  ATM.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/22.
//

import Foundation

let n = Int(readLine()!)!
var list = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = 0

list.sort()

func solution() {
    var result = 0
    for number in list {
        result = result + number
        answer = answer + result
    }
    
    print(answer)
}

solution()
