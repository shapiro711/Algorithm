//
//  10809_알파벳_찾기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/15.
//

import Foundation

var fisrtLine = readLine()!.utf8.map { String($0) }
var result = [Int]()
var isContain = false

for i in 97 ... 122 {
    for j in fisrtLine.indices {
        if i.description == fisrtLine[j] {
            result.append(j)
            isContain = true
            break
        }
    }
    if isContain == false {
        result.append(-1)
    }
    isContain = false
}

for number in result {
    print(number, terminator: " ")
}
