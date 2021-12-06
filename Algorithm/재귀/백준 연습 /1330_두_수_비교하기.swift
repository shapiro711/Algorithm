//
//  1330_두_수_비교하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ")
let a = Int(lineArr[0])!
let b = Int(lineArr[1])!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
