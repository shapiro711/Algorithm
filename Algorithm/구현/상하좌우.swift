//
//  상하좌우.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var firstLine = Int(readLine()!)!
var secondLine = readLine()!.split(separator: " ").map { String($0) }

var move = ["R", "L", "D", "U"]

typealias location = (Int, Int)

var start: location = (1, 1)

func solution() {
    for move in secondLine {
        if checkCanMove(move: move) {
            moveLocation(move: move)
        }
    }
    print(move)
}

func moveLocation(move: Stirng) {
    switch move {
    case "R":
        start.0 = start.0 + 1
    case "L":
        start.0 = start.0 - 1
    case "D":
        start.1 = start.1 + 1
    case "U":
        start.1 = start.1 - 1
    }
}

func checkCanMove(move: String) -> Bool {
    if start.0 <= 1 && move == "L" {
        return false
    }
    
    if start.1 <= 1 && move == "U" {
        return false
    }
    
    if start.0 >= firstLine && move == "R" {
        return false
    }
    
    if start.1 >= firstLine && move == "D" {
        return false
    }
    
    return true
}
