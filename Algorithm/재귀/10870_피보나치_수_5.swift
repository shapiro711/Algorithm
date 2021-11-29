//
//  10870_피보나치_수_5.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

var n = Int(readLine()!)!
var a = 0
var b = 1
var c = 0

func cal() {
    
    if n == 0 {
        print(a)
        return
    } else if n == 1 {
        print(b)
        return
    }
    
    c = a + b
    a = b
    b = c
    
    if n <= 2 {
        print(c)
        return
    } else {
        n -= 1
        cal()
    }
}

cal()
