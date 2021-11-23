//
//  9498_시험_성적.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

//시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ")
let score = Int(lineArr[0])!

if score >= 90 {
    print("A")
} else if score >= 80 {
    print("B")
} else if score >= 70 {
    print("C")
} else if score >= 60 {
    print("D")
} else{
    print("F")
}
