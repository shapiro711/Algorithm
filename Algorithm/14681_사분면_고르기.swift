//
//  14681_사분면_고르기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

var x = Int(readLine()!)!
var y = Int(readLine()!)!

if x > 0 && y > 0 {
    print("1")
} else if x > 0 && y < 0 {
    print("4")
} else if x < 0 && y > 0 {
    print("2")
} else if x < 0 && y < 0 {
    print("3")
}
//커밋 확인
