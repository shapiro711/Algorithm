//
//  124_나라의_숫자.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/15.
//

import Foundation

let number = Int(readLine()!)!
let result: [Int] = []

func solution() {
    while number < 3 {
        result.append(number%3)
        number = number / 3
    }
}

solution()
