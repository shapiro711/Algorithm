//
//  15552_빠른_A+B.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

var count = Int(readLine()!)!
var resultArr: [Int] = []

for i in 0..<count {
    var line = readLine()!
    var lineArr = line.split(separator: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    let result = a + b
    resultArr.append(result)
}

for i in resultArr {
    print(i)
}
