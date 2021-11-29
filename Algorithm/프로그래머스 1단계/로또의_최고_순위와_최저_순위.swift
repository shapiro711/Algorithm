//
//  로또의_최고_순위와_최저_순위.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/29.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var maxValue = 0
    var minValue = 0
    var sortedArr = sortZero(lottos)
    
    minValue = compare(sortedArr, win_nums)
    maxValue = minValue + lottos.count - sortedArr.count
    
    return [calculateResult(maxValue), calculateResult(minValue)]
}

func sortZero(_ lottos:[Int]) -> [Int] {
    let result = lottos.filter { $0 != 0 }
    return result
}

func compare(_ sort: [Int], _ win_nums:[Int]) -> Int {
    var result = 0
    for number in sort {
        if win_nums.contains(number) {
            result = result + 1
        }
    }
    return result
}

func calculateResult(_ number: Int) -> Int {
    if number < 2 {
        return 6
    } else {
        return 7 - number
    }
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
