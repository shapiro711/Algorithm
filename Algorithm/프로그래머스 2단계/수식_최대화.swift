//
//  수식_최대화.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2022/01/04.
//

import Foundation

func solution(_ expression:String) -> Int64 {
    var separeated = separate(expression)
    
    
    return 0
}

func separate(_ expression : String) -> [String] {
    var tmp = ""
    var result : [String] = []
    for ch in expression {
        let ch = String(ch)
        if ch == "+" || ch == "-" || ch == "*" {
            result.append(tmp)
            tmp = ""
            result.append(ch)
        } else {
            tmp += ch
        }
    }
    result.append(tmp)
    
    return result
}
