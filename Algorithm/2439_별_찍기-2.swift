//
//  2439_별_찍기-2.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

var n = Int(readLine()!)!

for i in 1...n {
    for _ in stride(from: n-1, through: i, by: -1) {
        print(" ", terminator: "")
    }
    
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}
