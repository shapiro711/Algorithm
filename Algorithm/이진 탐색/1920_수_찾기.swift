//
//  1920_수_찾기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/09.
//

import Foundation

var n = Int(readLine()!)!
var list = readLine()!.split(separator: " ").map {Int(String($0))!}
var m = Int(readLine()!)!
var list2 = readLine()!.split(separator: " ").map {Int(String($0))!}
var result = [Int]()

list.sort()

func binarySerch(target: Int, end: Int, start: Int) -> Int {
    while start <= end {
        let mid = (start+end)/2
        
        if list[mid] == target {
            return 1
        } else if list[mid] < target {
            return binarySerch(target: target, end: end, start: mid+1)
        } else if list[mid] > target {
            return binarySerch(target: target, end: mid-1, start: start)
        }
    }
    
    return 0
}

func solution() {
    for number in list2 {
        result.append(binarySerch(target: number, end: list.count-1, start: 0))
    }
    
    for result2 in result {
        print(result2)
    }
}

solution()

