//
//  2468_안전_영역.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var firstLine = Int(readLine()!)!
var graph = [[Int]]()
var tmp = [[Int]]()
var water = 0
var count = 0
var result = [Int]()

for _ in 0 ..< firstLine {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph.append(line)
    tmp.append(line)
}

func dfs(x: Int, y: Int) -> Bool {
    if x < 0 || x > firstLine - 1 || y < 0 || y > firstLine - 1 {
        return false
    }
    
    if graph[x][y] > water {
        graph[x][y] = -1
        
        dfs(x: x + 1, y: y)
        dfs(x: x - 1, y: y)
        dfs(x: x, y: y + 1)
        dfs(x: x, y: y - 1)
        return true
    }
    
    return false
}

func solution() {
    for a in 0 ... 100 {
        water = a
        for i in 0 ..< firstLine {
            for j in 0 ..< firstLine {
                if dfs(x: i, y: j) {
                    count += 1
                }
            }
        }
        graph = tmp
        result.append(count)
        count = 0
    }
    print(result.sorted().last!)
}

solution()
