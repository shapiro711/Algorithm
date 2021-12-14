//
//  1로_만들기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let x = Int(readLine()!)!
var dpTable: [Int] = Array(repeating: 0, count: x+2)

func dp() {
    dpTable[1] = 0
    for i in 2 ... x+1 {
        //1빼는 경우
        dpTable[i] = dpTable[i-1] + 1
        
        if i % 2 == 0 {
            dpTable[i] = min(dpTable[i], dpTable[i/2] + 1)
        } else if i % 3 == 0 {
            dpTable[i] = min(dpTable[i], dpTable[i/3] + 1)
        } else if i % 5 == 0 {
            dpTable[i] = min(dpTable[i], dpTable[i/5] + 1)
        }
    }
    print(dpTable[x])
}
dp()
