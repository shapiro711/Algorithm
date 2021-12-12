//
//  2210_숫자판_점프.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/12.
//

import Foundation

var map: [[String]] = Array(repeating: [], count: 5)
var numberSet = Set<String>()

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

for i in 0...4 {
    let line = readLine()!.split(separator: " ").map { String($0) }
    map[i] = line
}

func dfs(x: Int, y: Int, str: String, count: Int) {
    
    if count == 5 {
        numberSet.insert(str)
        return
    }
    
    var newX = 0
    var newY = 0
    
    for i in 0...3 {
        newX = x + dx[i]
        newY = y + dy[i]
        
        if newX < 0 || newX > 4 || newY < 0 || newY > 4 {
            continue
        }
        dfs(x: newX, y: newY, str: str + map[newX][newY], count: count+1)

    }
    
    return
}


func solution() {
    for i in 0 ... 4 {
        for j in 0 ... 4 {
            dfs(x: i, y: j, str: map[i][j], count: 0)
        }
    }
    print(numberSet.count)
}

solution()
