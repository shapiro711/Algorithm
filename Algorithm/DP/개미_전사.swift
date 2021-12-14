//
//  개미_전사.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let n = Int(readLine()!)!
let list = readLine()!.split(separator: " ").map { Int(String($0))! }
var dpTable = Array(repeating: 0, count: n)
var result = 0

func dp() {
    dpTable[0] = list[0]
    dpTable[1] = max(list[0], list[1])
    
    for i in 2 ... x {
        dpTable[i] = max(dpTable[i-1], dpTable[i-2]+list[i])
    }
}
