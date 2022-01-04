//
//  9012_괄호.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/30.
//

import Foundation

let n = Int(readLine()!)!
var list: [String] = []

for i in 0 ..< n {
    let line = String(readLine()!)
    list.append(line)
}

func solution() {
    var stack: [Character] = []
    var answer: [String] = []
    
    for str in list {
        var flag = true
        for c in str {
            if c == "(" {
                stack.append(c)
            } else {
                if stack.isEmpty {
                    flag = false
                    break
                } else {
                    stack.removeLast()
                }
            }
        }
        
        if !flag {
            answer.append("NO")
            continue
        }
        
        if stack.isEmpty {
            answer.append("YES")
        } else {
            answer.append("NO")
        }
        
        stack.removeAll()
    }
    
    for i in answer {
        print(i)
    }
}

solution()
