//
//  10815_숫자_카드.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

var n = Int(readLine()!)!
var nList = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var m = Int(readLine()!)!
var mList = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = [Int]()
func binarySearch(target:Int, start:Int, end: Int) -> Int {
    while start <= end {
        var mid = (start + end)/2
        if nList[mid] == target {
            return 1
        } else if nList[mid] < target {
            return binarySearch(target: target, start: mid+1, end: end)
        } else if nList[mid] > target {
            return binarySearch(target: target, start: start, end: mid-1)
        }
    }
    return 0
}

func solution() {
    for target in mList {
        result.append(binarySearch(target: target, start: 0, end: nList.count-1))
    }
}

solution()
for i in result {
    print(i, terminator: " ")
}
