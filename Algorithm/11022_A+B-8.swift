//
//  11022_A+B-8.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/24.
//

import Foundation

var count = Int(readLine()!)!
var aArr: [Int] = []
var bArr: [Int] = []
var result: [Int] = []

for i in 0..<count {
    var line = readLine()!
    var lineArr = line.split(separator: " ")
    var a = Int(lineArr[0])!
    var b = Int(lineArr[1])!
    aArr.append(a)
    bArr.append(b)
    let sum = a + b
    result.append(sum)
}

for i in 0..<count {
    print("Case #\(i + 1): \(aArr[i]) + \(bArr[i]) = \(result[i])")
}
