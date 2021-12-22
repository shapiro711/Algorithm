//
//  행렬_테두리_회전하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/22.
//

import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var map: [[Int]] = Array(repeating: [], count: rows)
    var number = 1
    for i in 0 ..< rows {
        for _ in 0 ..< columns {
            map[i].append(number)
            number += 1
        }
    }
    
    
    return rotation(query: queries, arr: map)
}

func rotation(query: [[Int]], arr: [[Int]]) -> [Int] {
    var map = arr
    let dx = [0, 1, 0, -1]
    let dy = [1, 0, -1, 0]
    var resultArr = [Int]()
    
    for query in query {
        var start = [query[0]-1, query[1]-1]
        let end = [query[2]-1, query[3]-1]
        let edge = [[start[0], end[1]], end, [end[0], start[1]], start]
        var result = [Int]()
        var nextnumber = 0
        for i in 0...3 {
            while start != edge[i] {
                let currentNumber = map[start[0]][start[1]]
                map[start[0]][start[1]] = nextnumber
                start[0] = start[0]+dx[i]
                start[1] = start[1]+dy[i]
                nextnumber = currentNumber
                result.append(currentNumber)
            }
        }
        
        map[edge[3][0]][edge[3][1]] = nextnumber
        resultArr.append(result.sorted().first!)
        result.removeAll()
    }
    
    return resultArr
}


print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
