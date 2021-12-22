//
//  11720_숫자의_합.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/15.
//

import Foundation

let n = Int(readLine()!)!
let line = readLine()!
let numberArr = line.unicodeScalars.map{ Int(String($0))! }
var result = 0

for number in numberArr {
    result = result + number
}

print(result)
