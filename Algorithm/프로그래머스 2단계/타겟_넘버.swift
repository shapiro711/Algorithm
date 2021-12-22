//
//  타겟_넘버.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/16.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var visited:[Int] = Array(repeating:0, count: numbers.count)
    visited[0] = 1
    dfs(arr: numbers, node: 1, result: numbers.first!, visited: visited, target: target)
    dfs(arr: numbers, node: 1, result: (numbers.first!) * -1, visited: visited, target: target)
    return 0
}

func dfs(arr: [Int], node: Int, result: Int, visited: [Int], target: Int) -> Int {
    if visited.contains(0) {
        let nextNode = node+1
        var currnetResult1 = result + arr[node]
        var currnetResult2 = result - arr[node]
        var newVisited = visited
        newVisited[nextNode] = 1
        dfs(arr: arr, node: nextNode, result: currnetResult1, visited: newVisited, target: target)
        dfs(arr: arr, node: nextNode, result: currnetResult1, visited: newVisited, target: target)
        
        
    } else {
        if target == result {
            return 1
        }
    }
    return 0
}
