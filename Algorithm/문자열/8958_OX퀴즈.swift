//
//  8958_OX퀴즈.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/15.
//

import Foundation

let n = Int(readLine()!)!
var testCase: [String] = []
var resultArr = [Int]()

for i in 0 ..< n {
    let line = readLine()!
    testCase.append(line)
}

func solution() {
    for i in 0 ..< n {
        let target = testCase[i]
        let targetArr = target.unicodeScalars.map { String($0) }
        var count = 0
        var resultCount = 0
        for str in targetArr {
            if str == "O" {
                count += 1
            } else {
                count = 0
            }
            resultCount = resultCount + count
        }
        resultArr.append(resultCount)
    }
    
    for result in resultArr {
        print(result)
    }
}

solution()
