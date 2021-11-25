//
//  10872_팩토리얼.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

var n = Int(readLine()!)!
var result = 0

func factorial {
    result = result + n
    
    if n == 1 {
        print(result)
        return
    } else {
        n -= 1
        factorial()
    }
}
