//
//  10871_X보다_작은_수.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

import Foundation

var line = readLine()!
var lineArr = line.split(separator: " ")
var numberArr = [Int]()
var n = Int(lineArr[0])!
var x = Int(lineArr[1])!


var numberLine = readLine()!
numberArr = numberLine.split(separator: " ").map{ Int($0)! }


for comparedNumber in numberArr {
    if comparedNumber < x {
        print(comparedNumber)
    }
}ㅌ
