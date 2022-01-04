//
//  전보.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2022/01/02.
//

import Foundation

let firstLine = readLine()!.split(separator: " ").map { Int(String($0)!)! }
let numberOfCity = fisrtLine[0]
let numberOfLoad = firstLine[1]
let targetCiry = fisrtLine[2]
let map: [[loadList]] = Array(repeating: [], count: numberOfLoad)

typealias loadList = (Int, Int)


for i in 0 ..< numberOfLoad {
    let line = readLine()!.split(separator: " ").map { Int(String($0)!)! }
    var load: loadList = (line[1], line[2])
    
}
