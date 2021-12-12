//
//  1697_숨바꼭질.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/11.
//

import Foundation

var fisrtLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = fisrtLine[0]
var k = fisrtLine[1]
let move = [-1, 1, 2]
let maxCount = 100001
var queue = [0]

var map = Array(repeating: 0, count: maxCount)
var visited = Array(repeating: -1, count: maxCount)

func bfs(stratIndex: Int) -> Int {
    visited[stratIndex] = 0
    
    if n == k {
        return 0
    }
    
    queue.removeFirst()
    queue.append(stratIndex)
    
    while !queue.isEmpty {
        let now = queue.remove(at: 0)
        var nx = 0
        
        //예상 이동 지역
        for i in 0 ... 2 {
            if i == 2 {
                nx = now * 2
            } else {
                nx = now + move[i]
            }
            
            //이동 가능한지 확인 이거 인덱스값 100001이 아니라 100000까지라 -1 해줘야했네 ㅡㅡ
            if nx < 0 || nx > maxCount-1 {
                continue
            }
            
            //방문 했었는지 확인
            if visited[nx] == -1 {
                if nx == k {
                    return map[now] + 1
                }
                
                // 이동
                map[nx] = map[now] + 1
                visited[nx] = 0
                queue.append(nx)
            }
        }
    }
    return -1
}

print(bfs(stratIndex: n))
