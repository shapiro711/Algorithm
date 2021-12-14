//
//  1463_1로_만들기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let n = Int(readLine()!)!
var dpTalbe = Array(repeating: 0, count: n+2)

func dp() {
    dpTalbe[1] = 0
    
    for i in 2 ... n+1 {
        dpTalbe[i] = dpTalbe[i-1] + 1
        
        if i % 2 == 0 {
            dpTalbe[i] = min(dpTalbe[i], dpTalbe[i/2] + 1)
        }
        
        if i % 3 == 0 {
            dpTalbe[i] = min(dpTalbe[i], dpTalbe[i/3] + 1)
        }
    }
    print(dpTalbe[n])
}

dp()
