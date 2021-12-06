//
//  음료수 얼려 먹기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var map = [[Int]]()

for i in 0 ..< firstLine[0] {
    var line = readLine()!.split(separator: " ").map { Int(String($0))! }
    map.append(line)
}

print(map)

func dfs(x: Int, y: Int) -> Bool {
    if x <= -1 || x > firstLine[0] - 1 || y <= -1 || y > firstLine[1] - 1 {
        return false
    }
    
    if map[x][y] == 0 {
        map[x][y] = 1
        
        dfs(x: x-1, y: y)
        dfs(x: x, y: y-1)
        dfs(x: x+1, y: y)
        dfs(x: x, y: y+1)
        return true
    }
    
    return false
}

var result = 0

for i in 0 ..< firstLine[0] {
    for j in 0 ..< firstLine[1] {
        if dfs(x: i, y: j) {
            result += 1
        }
    }
}

print(result)

// dfs 이용해서 푼 문젠데
// 1. 그래프 만들고
// 2. 인접한 0 노드들 쭉 돌면서 1로 만들어 준다.
// 3. 더이상 못하면 탈출
// 4. 이 작업을 모든 노드에 대해서 해주면 된다.
// 5. 왜 모든 노드에 대해서 해주면 되냐면 어차피 이전에 했던건 1로 바뀌어 있음
// 6. 결국 재귀로 쭉 돌고 나오게 되는데, 나오면 true 반환하게 될거임
// 7. 하나도 없거나 맵 밖으로 벗어나면 false로 나오게 될꺼임
