//
//  2753_윤년.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

var year = Int(readLine()!)!

if year % 400 == 0 {
    print("1")
} else if year % 100 == 0 {
    print("0")
} else if year % 4 == 0 {
    print("1")
} else {
    print("0")
}
