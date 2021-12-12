//
//  10026_적록색약.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/11.
//

import Foundation

var n = Int(readLine()!)!
var map: [[String]] = Array(repeating: [], count: n)
var tempMap: [[String]] = Array(repeating: [], count: n)

var otherColor = [String]()
var startColor = "R"

var count = 0
var badCount = 0

for i in 0 ..< n {
    let line = readLine()!.unicodeScalars.map { String($0) }
    map[i] = line
    tempMap[i] = line
}

func dfs(x: Int, y: Int) -> Bool {
    if x < 0 || x >= n || y < 0 || y >= n {
        return false
    }
    
    if map[x][y] != "V" && map[x][y] == startColor {
        map[x][y] = "V"
        dfs(x: x-1, y: y)
        dfs(x: x+1, y: y)
        dfs(x: x, y: y-1)
        dfs(x: x, y: y+1)
        return true
    }
    return false
}

func badColorDfs(x: Int, y: Int) -> Bool {
    if x < 0 || x >= n || y < 0 || y >= n {
        return false
    }
    
    if startColor == "B" {
        if tempMap[x][y] != "V" && tempMap[x][y] == startColor {
            tempMap[x][y] = "V"
            badColorDfs(x: x-1, y: y)
            badColorDfs(x: x+1, y: y)
            badColorDfs(x: x, y: y-1)
            badColorDfs(x: x, y: y+1)
            return true
        }
    } else {
        if tempMap[x][y] != "V" && tempMap[x][y] != "B" {
            tempMap[x][y] = "V"
            badColorDfs(x: x-1, y: y)
            badColorDfs(x: x+1, y: y)
            badColorDfs(x: x, y: y-1)
            badColorDfs(x: x, y: y+1)
            return true
        }
    }

    return false
}

for i in 0 ..< n {
    for j in 0 ..< n {
        startColor = map[i][j]
        if dfs(x: i, y: j) {
            count += 1
        }
        
        startColor = tempMap[i][j]
        if badColorDfs(x: i, y: j) {
            badCount += 1
        }
    }
}

print(count, terminator: " ")
print(badCount)
