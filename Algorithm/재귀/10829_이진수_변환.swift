//
//  10829_이진수_변환.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/29.
//

import Foundation

let n = Int(readLine()!)!

func calculate(n: Int) -> String {
    if n < 2 {
        return (n % 2).description
    } else {
        (n % 2).description + calculate(n: n/2)
    }
}

print (calculate(n: 10))
