//
//  1316_그룹_단어_체커.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/30.
//

import Foundation

let n = Int(readLine()!)!
var list: [String] = []

for i in 0 ..< n {
    let line = String(readLine()!)
    list.append(line)
}

func solution() {
    var checkList: [Character] = []
    var count = 0
    
    for str in list {
        var flag = true
        var currentCheck: Character = str.first!
        checkList.append(currentCheck)
        for char in str {
            if currentCheck != char {
                currentCheck = char
                if checkList.contains(char) {
                    flag = false
                    break
                } else {
                    checkList.append(char)
                    currentCheck = char
                }
            }
        }
        if flag {
            count += 1
        }
        checkList.removeAll()
    }
    
    print(count)
}

solution()
