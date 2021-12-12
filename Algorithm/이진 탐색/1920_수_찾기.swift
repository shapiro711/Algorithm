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

var start = 0
var end = n - 1

list.sort()

for number in list2 {
    var target = number
    while start <= end {
        var mid = (start + end) / 2
        if target == list[mid] {
            print("1")
            break
        }
        if target > list[mid] {
            start = mid + 1
            
        } else if target < list[mid] {
            end = mid - 1
        }
    }
    print("0")
}
