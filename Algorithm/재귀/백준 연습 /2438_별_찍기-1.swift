//
//  2438_별_찍기-1.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/24.
//

import Foundation

var n = Int(readLine()!)!

for i in 1...n {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}
