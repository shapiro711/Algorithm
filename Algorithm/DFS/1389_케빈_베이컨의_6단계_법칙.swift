//
//  File.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/14.
//

import Foundation

let firstLine = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = firstLine[0]
let m = firstLine[1]
var resultArr = Array(repeating: 0, count: n)
var list: [[Int]] = Array(repeating: [], count: n)
var solutrionArr = Array(repeating: 0, count: n)
var queue = [Int]()

for i in 0 ..< m {
    let line = readLine()!.split(separator: " ").map {Int(String($0))!}
    list[line[0]-1].append(line[1]-1)
    list[line[1]-1].append(line[0]-1)
}

func bfs(start: Int) {
    queue.append(start)
    resultArr[start] = 1
    
    while !queue.isEmpty {
        
        let currentNode = queue.remove(at: 0)
        
        for nextNode in list[currentNode] {
            if resultArr[nextNode] == 0 {
                queue.append(nextNode)
                resultArr[nextNode] = resultArr[currentNode]+1
            }
        }
    }
}


func solution() {
    for i in 0 ..< n {
        bfs(start: i)
        resultArr.remove(at: i)
        var result = 0
        for number in resultArr {
            result = result + number - 1
        }
        solutrionArr[i] = result
        resultArr = Array(repeating: 0, count: n)
    }
    
    let min = solutrionArr.sorted().first!
    for i in 0 ..< n {
        if solutrionArr[i] == min {
            print(i+1)
            break
        }
    }
}

solution()
