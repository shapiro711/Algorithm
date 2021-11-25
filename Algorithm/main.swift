//
//  main.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

var n = Int(readLine()!)!
var result = 1

func factorial() {
    if n <= 1 {
        print(result)
        return
    } else {
        result = result * n
        n -= 1
        factorial()
    }
}

factorial()
