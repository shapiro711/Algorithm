//
//  10815_숫자_카드.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

var n = Int(readLine()!)!
var nList = readLine()!.split(separator: " ").map { Int(String($0))! }.sort()

var m = Int(readLine()!)!
var mList = readLine()!.split(separator: " ").map { Int(String($0))! }

func binarySearch(taget:Int, start:Int, end: Int) -> Int {
    whild start <= end {
        var mid = (start + end)/2
        if nList[mid] == target {
            return 1
        } else if nList[mid] < target {
            return binarySearch(taget: target, start: mid+1, end: end)
        } else if nList[mid] > target {
            return binarySearch(taget: target, start: start, end: mid-1)
        }
    }
    return 0
}

solution()
