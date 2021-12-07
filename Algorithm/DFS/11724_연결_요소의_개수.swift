//
//  11724_연결_요소의_개수.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/07.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var connection: [[Int]] = Array(repeating: [], count: firstLine[0])
var visited: [Int] = Array(repeating: 0, count: firstLine[0])
var count = 0

for i in 0 ..< firstLine[1] {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    connection[line[0]-1].append(line[1]-1)
    connection[line[1]-1].append(line[0]-1)
}

func dfs(node: Int) {
    visited[node] = 1
    
    for newnode in connection[node] {
        if visited[newnode] == 0 {
            dfs(node: newnode)
        }
    }
}

func solution() {
    for i in 0 ... firstLine[0]-1 {
        if visited[i] == 0 {
            count += 1
            dfs(node: i)
        }
    }
    print(count)
}

solution()
