//
//  2644_촌수계산.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let n = Int(readLine()!)!
let target = readLine()!.split(separator: " ").map { Int(String($0))!}
let m = Int(readLine()!)!
var list: [[Int]] = Array(repeating: [], count: n)
var queue: [Int] = []
var visited: [Int] = Array(repeating: 0, count: n)

for i in 0 ..< m {
    let line = readLine()!.split(separator: " ").map { Int(String($0))!}
    list[line[0]-1].append(line[1]-1)
    list[line[1]-1].append(line[0]-1)
}

func bfs(start: Int) {
    var depth = 0
    queue.append(start)
    
    while !queue.isEmpty {
        let currentNode = queue.remove(at: 0)
        
        for nextNode in list[currentNode] {
            if visited[nextNode] == 0 {
                queue.append(nextNode)
                visited[nextNode] = visited[currentNode] + 1
            }
        }
    }
}

func solution() {
    bfs(start: target[0]-1)
    if visited[target[1]-1] == 0 {
        print("-1")
    } else {
        print(visited[target[1]-1])
    }
    
}

solution()
