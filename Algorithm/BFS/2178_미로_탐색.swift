//
//  2178_미로_탐색.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/07.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = firstLine[0]
let m = firstLine[1]
var graph = [[Int]]()
var queue = [[0, 0]]

for _ in 0 ... n-1 {
    let line = readLine()!.unicodeScalars.map { Int(String($0))! }
    graph.append(line)
}

//동서남북 이동
let dx: [Int] = [0,0,-1,1]
let dy: [Int] = [-1,1,0,0]

func bfs(x: Int, y: Int) -> Int {
    queue.removeFirst()
    queue.append([x, y])
    
    while !queue.isEmpty {
        let now = queue.remove(at: 0)
        for i in 0 ... 3 {
            
            //이동한 위치 계산
            let nx = now[0] + dx[i]
            let ny = now[1] + dy[i]
            
            //이동한 위치 지도 밖인지 검사
            if nx < 0 || nx >= firstLine[0] || ny < 0 || ny >= firstLine[1] {
                continue
            }
            
            //이동한 위치가 방문하지 않았으면 이전 이동한 위치에서 거리 + 1
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[now[0]][now[1]] + 1
                //성공적으로 이동하면 큐에 넣음
                queue.append([nx, ny])
            }
        }
    }
    return graph[n-1][m-1]
}

print(bfs(x: 0, y: 0))
