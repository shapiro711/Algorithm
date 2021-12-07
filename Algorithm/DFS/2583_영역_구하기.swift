//
//  2583_영역_구하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/07.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map {Int(String($0))!}
let m = firstLine[0]
let n = firstLine[1]
let k = firstLine[2]
var graph = [[Int]]()
var result = 0
var resultCount = [Int]()
var count = 0

var squarLocation = [[Int]]()

for _ in 0 ..< k {
    var line = readLine()!.split(separator: " ").map {Int(String($0))!}
    squarLocation.append(line)
}

var line2 = [Int]()
for i in 0 ... m-1 {
    for j in 0 ... n - 1 {
        line2.append(0)
    }
    graph.append(line2)
    line2.removeAll()
}


for i in 0 ... m-1 {
    for j in 0 ... n-1 {
        for a in 0 ... k-1 {
            if j >= squarLocation[a][0] && j < squarLocation[a][2] &&
                i >= squarLocation[a][1] && i < squarLocation[a][3] {
                graph[i][j] = 1
            }
        }
    }
}


func dfs(x: Int, y: Int) -> Bool {
    if x <= -1 || x > m - 1 || y <= -1 || y > n - 1 {
        return false
    }
    
    if graph[x][y] == 0 {
        graph[x][y] = 1
        count += 1
        
        dfs(x: x-1, y: y)
        dfs(x: x, y: y-1)
        dfs(x: x+1, y: y)
        dfs(x: x, y: y+1)
        return true
    }
    
    return false
}

func solution() {
    for i in 0 ... m-1 {
        for j in 0 ... n-1 {
            if dfs(x: i, y: j) {
                result += 1
                resultCount.append(count)
                count = 0
            }
        }
    }
    print(result)
    for count in resultCount.sorted() {
        print(count)
    }
}


solution()
