//
//  main.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

func calculate(number: Int) {
    if number < 2 {
        print(number % 2, terminator: "")
        return
    } else {
        calculate(number: number/2)
        print(number % 2, terminator: "")
    }
}

var n = Int(readLine()!)!
calculate(number: n)
