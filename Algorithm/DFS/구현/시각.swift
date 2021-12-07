//
//  시각.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/06.
//

import Foundation

var fisrtLine = Int(readLine()!)!

func convertNumber() -> Int {
    var result = 0
    result = (fisrtLine + 1) * 3600
    return result
}


func convertTime(number: Int) -> [String] {
    var arr = [String]()
    let time = number / 3600
    let min = number % 3600 / 60
    let second = number % 3600 % 60
    
    let timeArr = String(time).unicodeScalars.map{ String($0) }
    let minArr = String(min).unicodeScalars.map { String($0) }
    let secondArr = String(second).unicodeScalars.map{ String($0) }
    
    arr = timeArr + minArr + secondArr
    return arr
}

func solution() -> Int {
    var count = 0
    
    for number in 0...convertNumber()-1 {
        if convertTime(number: number).contains("3") {
            count += 1
        }
    }
    return count
}
print(solution())
