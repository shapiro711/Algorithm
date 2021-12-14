//
//  2805_나무_자르기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/13.
//

import Foundation

let fisrtLine = readLine()!.split(separator: " ").map {Int(String($0))!}
let n = fisrtLine[0]
let m = fisrtLine[1]
var list = [Int]()
var result = 0

let line = readLine()!.split(separator: " ").map {Int(String($0))!}
list = line

//딱 맞아 떨어질수가 없는 경우도 존재함
//그럴때는 최대값을 구해야하니까 아래처럼 해야됨
//최대값은 자른 나무가 목표 나무 보다 조금 더 크더라도 가장 근접할때
func binarySerch(start: Int, end: Int) -> Int {
    var target = 0
    while start <= end {
        let mid = (start+end)/2
        for number in list {
            if number - mid > 0 {
                target = target + number - mid
            }
        }
        if target < m {
            return binarySerch(start: start, end: mid-1)
        } else {
            result = mid
            return binarySerch(start: mid+1, end: end)
        }
    }
    
    return 0
}


func solution() {
    list.sort()
    binarySerch(start: 0, end: list.last!)
    print(result)
}

solution()
