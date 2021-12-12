//
//  1012_유기농_배추.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/08.
//

import Foundation

var testCase = Int(readLine()!)!
var result = [Int]()
var n: Int = 0
var m: Int = 0
var vegetableCount: Int = 0
var vegetableLocation = [[Int]]()

var graph: [[Int]] = Array(repeating: [], count: n)


func makeGraph(x: Int) {
    graph = Array(repeating: [], count: x)
    for i in 0 ..< n {
        for j in 0 ..< m  {
            graph[i].append(0)
        }
    }
    
    for location in vegetableLocation {
        graph[location[1]][location[0]] = 1
    }
}

func dfs(x: Int, y: Int) -> Bool {
    if x < 0 || x >= n || y < 0 || y >= m {
        return false
    }
    
    if graph[x][y] == 1 {
        graph[x][y] = 0
        dfs(x: x-1, y: y)
        dfs(x: x+1, y: y)
        dfs(x: x, y: y-1)
        dfs(x: x, y: y+1)
        return true
    }
    return false
}

func solution() {
    var count = 0
    for i in 0 ..< n {
        for j in 0 ..< m {
            if dfs(x: i, y: j) {
                count += 1
            }
        }
    }
    result.append(count)
}

func reset() {
    vegetableLocation.removeAll()
    graph = Array(repeating: [], count: n)
}


for i in 0 ..< testCase {
    var line = readLine()!.split(separator: " ").map {Int(String($0))!}
    n = line[1]
    m = line[0]
    vegetableCount = line[2]
    
    for i in 0 ..< vegetableCount {
        var vegetableLine = readLine()!.split(separator: " ").map {Int(String($0))!}
        vegetableLocation.append(vegetableLine)
    }
    
    makeGraph(x:n)
    solution()
    reset()
}

for result in result {
    print(result)
}

