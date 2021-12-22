//
//  짝지어_제거하기.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/12/22.
//

import Foundation

func solution(_ s:String) -> Int{
    var strArr = s.unicodeScalars.map { String($0) }
    var stack = [String]()
    
    stack.append(strArr.remove(at: 0))
    
    while !strArr.isEmpty {
        var target = strArr.remove(at: 0)
        if stack.last == target {
            stack.removeLast()
        } else {
            stack.append(target)
        }
    }
    return stack.isEmpty ? 1 : 0
}

//func recursion(arr: [String]) -> Int {
//
//    if arr.isEmpty {
//        return 1
//    }
//
//    var strArr = arr
//    for i in 1 ..< strArr.count {
//        var targetStr = strArr[i-1]
//        if targetStr == strArr[i] {
//            strArr.remove(at: i-1)
//            strArr.remove(at: i-1)
//            return recursion(arr: strArr)
//        }
//    }
//    return 0
//}

print(solution("baabaa"))
