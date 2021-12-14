//
//  9095_1,2,3_더하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

var t = Int(readLine()!)!
var testList = [Int]()
for i in 0 ..< t {
    let line = Int(readLine()!)!
    testList.append(line)
}
var d: [Int] = Array(repeating: 0, count: 12)

func dp() {
    d[1] = 1
    d[2] = 2
    d[3] = 4
    
    for i in 4 ... 11 {
        d[i] = d[i-3] + d[i-2] + d[i-1]
    }
}

dp()

for target in testList {
    print(d[target])
}
