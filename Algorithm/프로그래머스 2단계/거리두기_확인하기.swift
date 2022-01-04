//
//  거리두기_확인하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2022/01/04.
//

import Foundation

func solution(_ places:[[String]]) -> [Int] {
    
    var answer: [Int] = []
    var result: [Int] = []
    
    for i in 0 ..< 5 {
        
        var visited: [[Int]] = Array(repeating: [], count: 5)
        for i in 0 ..< 5 {
            for j in 0 ..< 5 {
                visited[i].append(0)
            }
        }
        var map: [[String]] = [[]]
        
        for str in places[i] {
            var line = str.unicodeScalars.map { String($0) }
            map.append(line)
        }
        map.removeFirst()
        
        for i in 0 ..< 5 {
            for j in 0 ..< 5 {
                if map[i][j] == "X" {
                    visited[i][j] = 1
                }
            }
        }
        
        let p = findP(map: map)
        
        for x in 0 ..< p.count {
            for y in 0 ..< p[x].count {
                if check(map: map, visited: visited, x: x, y: p[x][y], count: 0) {
                    answer.append(0)
                } else {
                    answer.append(1)
                }
                
            }
        }
        if answer.contains(0) {
            result.append(0)
        } else {
            result.append(1)
        }
        
        answer.removeAll()
    }
    
    return result
}

func findP(map: [[String]]) -> [[Int]] {
    var result: [[Int]] = Array(repeating: [], count: 5)
    for i in 0 ..< map.count {
        for j in 0 ..< map[i].count {
            if map[i][j] == "P" {
                result[i].append(j)
            }
        }
    }
    return result
}

func check(map: [[String]], visited: [[Int]], x: Int, y: Int, count: Int) -> Bool {

    if count > 2 {
        return false
    }
    
    var visitedTmp = visited
    visitedTmp[x][y] = 1

    
    if count != 0 {
        if map[x][y] == "P" {
            return true
        }
    }
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    
    for i in 0 ..< 4 {
        
        if x+dx[i] < 0 || x+dx[i] > 4 || y+dy[i] < 0 || y+dy[i] > 4 {
            continue
        }
        
        if visited[x+dx[i]][y+dy[i]] == 0 {
            if check(map: map, visited: visitedTmp, x: x+dx[i], y: y+dy[i], count: count+1) {
                return true
            } else {
                continue
            }
        }
    }
    
    return false
}

print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
