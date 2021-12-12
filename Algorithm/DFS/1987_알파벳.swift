//
//  1987_알파벳.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/12.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = firstLine[0]
let c = firstLine[1]
var map: [[String]] = Array(repeating: [], count: r)
var visit: [[Int]] = Array(repeating: [], count: r)
var alpha = Set<String>()
var result: Int = 0

for i in 0 ..< r {
    let line = readLine()!.unicodeScalars.map { String($0) }
    map[i] = line
}

for i in 0 ..< r {
    for j in 0 ..< c {
        visit[i].append(0)
    }
}

func dfs(x: Int, y: Int) -> Bool {
    if x < 0 || x >= r || y < 0 || y >= c {
        return false
    }
    
    if !alpha.contains(map[x][y] as! String) && visit[x][y] == 0 {
        alpha.insert(map[x][y])
        if result < alpha.count {
            result = alpha.count
        }
        visit[x][y] = 1
        
        dfs(x: x+1, y: y)
        dfs(x: x-1, y: y)
        dfs(x: x, y: y+1)
        dfs(x: x, y: y-1)
        
        visit[x][y] = 0
        alpha.remove(map[x][y])
        return true
    }
    return false
}

func solution() {
    dfs(x: 0, y: 0)
    print(result)
}

solution()
