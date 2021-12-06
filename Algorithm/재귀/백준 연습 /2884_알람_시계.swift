//
//  2884_알람_시계.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2021/11/23.
//

import Foundation

var hour = Int(readLine()!)!
var minute = Int(readLine()!)!

if minute - 45 < 0 {
    minute = minute + 60 - 45
    hour -= 1
} else {
    minute -= 45
}

print("\(hour) \(minute)")
