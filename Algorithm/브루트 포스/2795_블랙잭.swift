//
//  2795_블랙잭.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

let firstLine = readLine()!.split(separator: " ").map(){ Int(String($0))! }
let n = firstLine[0]
let m = firstLine[1]
let cards = readLine()!.split(separator: " ").map(){ Int(String($0))! }

func cal(n: Int, m: Int, cards: [Int]) {
    var result = 0
    
    for firstcard in 0...n-3 {
        for secondcard in firstcard+1...n-2 {
            for thirdcard in secondcard+1...n-1 {
                let sum = cards[firstcard] + cards[secondcard] + cards[thirdcard]
                
                if m < sum {
                    continue
                } else if m >= sum {
                    if result < sum {
                        result = sum
                    }
                }
            }
        }
    }
    
    print(result)
}

cal(n: n, m: m, cards: cards)
