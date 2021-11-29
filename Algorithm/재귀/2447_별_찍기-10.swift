//
//  2447_별_찍기-10.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/25.
//

import Foundation

var n = Int(readLine()!)!
var view: [String] = []

func drawView(count: Int, view: [String]) {
    if count == 1 {
        for view in view {
            print(view)
        }
        return
    }
    
    let one = view.map { $0 + $0 + $0}
    let two = view.map { $0 + String(repeating: " ", count: $0.count) + $0}
    let newView = one + two + one
    
    drawView(count: count/3, view: newView)
}

drawView(count: n, view: ["*"])
