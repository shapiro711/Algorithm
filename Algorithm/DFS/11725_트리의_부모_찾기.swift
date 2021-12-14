//
//  11725_트리의_부모_찾기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/14.
//

import Foundation

let n = Int(readLine()!)!
var list: [[Int]] = Array(repeating: [], count: n)
var depthArr: [Int] = Array(repeating: 0, count: n)
var visited: [Int] = Array(repeating: 0, count: n)

for i in 0 ..< n-1 {
    let line = readLine()!.split(separator: " ").map {Int(String($0))!}
    list[line[0]-1].append(line[1]-1)
    list[line[1]-1].append(line[0]-1)
}

func dfs(node: Int, depth: Int = 0) {
    visited[node] = 1
    depthArr[node] = depth
    
    for nextNode in list[node] {
        if visited[nextNode] == 0 {
            dfs(node: nextNode, depth: depth+1)
        }
    }
}

func solution() {
    dfs(node: 0)
    var resultArr = [Int]()
    
    for i in 1 ..< n {
        for number in list[i] {
            if depthArr[i]-1 == depthArr[number] {
                resultArr.append(number)
                print(number+1)
            }
        }
    }
}

solution()
