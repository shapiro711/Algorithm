//
//  1931_회의실_배정.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/22.
//

import Foundation

let n = Int(readLine()!)!
var list: [[Int]] = Array(repeating: [], count: n)

for i in 0 ..< n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    list[i] = line
}

//정렬 시작시간도 해야 하는 이유
// 1,3 8,8 4,8
//이렇게 시작과 동시에 끝나는거 있을수도 있는데 이런거 때문에 있어야됨

func solution() {
    list.sort { a, b in
        if a[1] == b[1] {
            return a[0] < b[0]
        } else {
            return a[1] < b[1]
        }
    }
    var result = 0
    var currentTime = 0
    for meeting in list {
        if currentTime <= meeting[0] {
            currentTime = meeting[1]
            result += 1
        }
    }
    
    print(result)
}

solution()
