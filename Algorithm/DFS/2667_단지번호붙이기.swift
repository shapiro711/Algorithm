//
//  2667_단지번호붙이기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var firstLine = Int(readLine()!)!
var graph = [[Int]]()
var countResult: [Int] = []
var count = 0
var result = 0

for _ in 0 ..< firstLine {
    let line = String(readLine()!)
    let lineArr = line.unicodeScalars.map { Int(String($0))! }
    graph.append(lineArr)
}

func dfs(x: Int, y: Int) -> Bool {
    if x < 0 || x > firstLine - 1 || y < 0 || y > firstLine - 1 {
        return false
    }
    
    if graph[x][y] == 1 {
        graph[x][y] = 0
        count += 1
        
        dfs(x: x + 1, y: y)
        dfs(x: x - 1, y: y)
        dfs(x: x, y: y + 1)
        dfs(x: x, y: y - 1)
        return true
    }
    
    return false
}

func solution() {
    for i in 0 ..< firstLine {
        for j in  0 ..< firstLine {
            if dfs(x: i, y: j) {
                countResult.append(count)
                result += 1
            }
            count = 0
        }
    }
    
    print(result)
    for count in countResult.sorted() {
        print(count)
    }
}

solution()


