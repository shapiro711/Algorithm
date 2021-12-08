//
//  1260_DFS와_BFS.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/08.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map {Int(String($0))!}
var nodeCount = firstLine[0]
var connectionCount = firstLine[1]
var firstNode = firstLine[2]
var list: [[Int]] = Array(repeating: [], count: nodeCount)
var visited: [Int] = Array(repeating: 0, count: nodeCount)
var visited2: [Int] = Array(repeating: 0, count: nodeCount)
var queue = [Int]()
var dfsArr = [Int]()
var bfsArr = [Int]()

for i in 0 ..< connectionCount {
    let line = readLine()!.split(separator: " ").map {Int(String($0))!}
    list[line[0]-1].append(line[1]-1)
    list[line[1]-1].append(line[0]-1)
}

for i in 0 ..< nodeCount {
    list[i].sort()
}

func dfs(node: Int) {
    
    visited[node] = 1
    dfsArr.append(node+1)
    
    for nextNode in list[node] {
        if visited[nextNode] == 0 {
            dfs(node: nextNode)
        }
    }
}

func bfs(node: Int) {
    visited2[node] = 1
    queue.append(node)
    
    while !queue.isEmpty {
        let currentNode = queue.remove(at: 0)
        bfsArr.append(currentNode+1)
        for nextNode in list[currentNode] {
            if visited2[nextNode] == 0 {
                queue.append(nextNode)
                visited2[nextNode] = 1
            }
        }
    }
}


dfs(node: firstNode-1)
bfs(node: firstNode-1)

for number in dfsArr {
    print(number, terminator: " ")
}

print("")

for number in bfsArr {
    print(number, terminator: " ")
}
