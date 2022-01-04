//
//  수식_최대화.swift
//  Algorithm
//
//  Created by Kim Do hyung on 2022/01/04.
//

import Foundation

func solution(_ expression:String) -> Int64 {
    var result: [Int] = []
    var separeated = separate(expression)
    let priorities = makePriority()
    for priority in priorities {
        let value = answer(priorities: priority, separeated)
        if value < 0 {
            result.append(value*(-1))
        } else {
            result.append(value)
        }
    }
    
    result.sort()
    return Int64(result.last!)
}

func makePriority() -> [[String]] {
    let priority: [String] = ["+","*","-"]
    var result: [[String]] = [[]]
    
    for i in 0 ..< priority.count {
        var line: [String] = []
        var tmp: [String] = ["+","*","-"]
        var fisrtOP = tmp[i]
        tmp.remove(at: i)
        for j in 0 ..< priority.count - 1 {
            var secondTmp = tmp
            line.append(fisrtOP)
            line.append(tmp[j])
            secondTmp.remove(at: j)
            line.append(secondTmp.first!)
            result.append(line)
            line.removeAll()
        }
        
    }
    result.removeFirst()
    return result
}

func separate(_ expression : String) -> [String] {
    var tmp = ""
    var result : [String] = []
    for ch in expression {
        let ch = String(ch)
        if ch == "+" || ch == "-" || ch == "*" {
            result.append(tmp)
            tmp = ""
            result.append(ch)
        } else {
            tmp += ch
        }
    }
    result.append(tmp)
    
    return result
}

func answer(priorities: [String], _ expression: [String]) -> Int {
    var temp = expression
    for priority in priorities {
        var number1 = 0
        var number2 = 0
        while temp.contains(priority) {
            let index = temp.firstIndex(of: priority)!
            number1 = Int(temp[index-1])!
            number2 = Int(temp[index+1])!
            let result = calculate(left: number1, right: number2, str: priority)
            temp[index] = String(result)
            temp.remove(at: index-1)
            temp.remove(at: index)
        }
    }
    return Int(temp[0])!
}

func calculate(left: Int, right: Int, str: String) -> Int {
    var result = 0
    if str == "+" {
        result = left + right
    } else if str == "-" {
        result = left - right
    } else if str == "*" {
        result = left * right
    }
    
    return result
}

print(solution("100-200*300-500+20"))
