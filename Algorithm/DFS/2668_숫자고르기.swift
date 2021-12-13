//
//  2668_숫자고르기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let n = Int(readLine()!)!
var list: [Int] = []
var visited: [Int] = Array(repeating: 0, count: n)
var result = Set<Int>()
var startNode = -1
var count = 0

for i in  0 ..< n {
    let number = Int(readLine()!)!
    list.append(number-1)
}

func dfs(node: Int) -> Bool {
    visited[node] += 1
    
    var nextNode = list[node]
    
    if nextNode == startNode {
        count += 1
        result.insert(startNode)
        return true
    }
    
    if visited[nextNode] == 1 {
        return false
    }
    
    dfs(node: nextNode)
    return false

}

func reset() {
    visited = Array(repeating: 0, count: n)
}

func solution() {
    for i in 0 ..< n {
        startNode = i
        dfs(node: i)
        reset()
    }
}

solution()
print(count)
for i in result.sorted() {
    print(i+1)
}
