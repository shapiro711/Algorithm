//
//  2306_바이러스.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/07.
//

import Foundation

var numberOfCoputer = Int(readLine()!)!
var numberOfConnection = Int(readLine()!)!
var connection: [[Int]] = Array(repeating: [], count: numberOfCoputer + 1)
var visited: [Int] = Array(repeating: 0, count: numberOfCoputer + 1)
var stack: [Int] = []
var count = 0

for i in 0 ..< numberOfConnection {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    connection[line[0]-1].append(line[1]-1)
    connection[line[1]-1].append(line[0]-1)
}


func dfs2(node: Int) {
    visited[node] = 1
    for newnode in connection[node] {
        if visited[newnode] == 0 {
            count += 1
            dfs2(node: newnode)
        }
    }
}


dfs2(node: 0)
print(count)
