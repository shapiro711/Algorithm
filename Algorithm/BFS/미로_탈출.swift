//
//  미로_탈출.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/07.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var graph = [[Int]]()
var queue: [[Int]] = [[0,0]]

let dx: [Int] = [0,0,-1,1]
let dy: [Int] = [-1,1,0,0]

for i in 0 ..< firstLine[0] {
    var line = readLine()!.unicodeScalars.map { Int(String($0))! }
    graph.append(line)
}

func bfs(x: Int, y: Int) -> Int {
    queue.append([x,y])
    
    while queue.isEmpty {
        let now = queue.remove(at: 0)
        for i in 0...3 {
            let nx = now[0] + dx[i]
            let ny = now[1] + dy[i]
            
            if nx < 0 || nx >= firstLine[0] || ny < 0 || ny >= firstLine[1] {
                continue
            }
            
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append([nx, ny])
            }
        }
    }
    
    return graph[firstLine[0]][firstLine[1]]
}

print(bfs(x: 0, y: 0))
