//
//  2941_크로아티아_알파벳.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/30.
//

import Foundation

let target = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
let checkList = ["c", "d", "l", "n", "s", "z"]
let str = readLine()!.unicodeScalars.map { String($0) }

func solution() {
    var count = 0
    var check = ""
    for char in str {
        if check != "" {
            if check.count < 3 {
                check = check + char
                if target.contains(check) {
                    if check.count == 3 {
                        count += 2
                    } else {
                        count += 1
                    }
                    check = ""
                }
            } else {
                check = ""
            }
        } else {
            if checkList.contains(char) {
                check = char
            } else {
                check == ""
            }
        }
    }
    
    print(str.count - count)
}

solution()
