//
//  부품_찾기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/09.
//

import Foundation

var n = Int(readLine()!)!
var nList = readLine()!.split(separator: " ").map { Int(String($0))! }
var m = Int(readLine()!)!
var mList = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: [String] = []

func binarySerch(array:[Int], taget: Int, start: Int, end: Int) -> Int? {
    while start <= end {
        var mid = (start + end)/2
        if array[mid] == taget {
            return mid
        } else if array[mid] > taget {
            return binarySerch(array: array, taget: taget, start: start, end: mid-1)
        } else {
            return binarySerch(array: array, taget: taget, start: mid+1, end: end)
        }
    }
    return nil
}

func solution() {
    nList.sort()
    for order in mList {
        if let result2 = binarySerch(array: nList, taget: order, start: 0, end: n-1) {
            result.append("yes")
        } else {
            result.append("no")
        }
    }
    
    for i in result {
        print(i)
    }
}

solution()
