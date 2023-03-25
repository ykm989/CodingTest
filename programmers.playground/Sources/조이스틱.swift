// 조이스틱
// 2023.03.18
// https://school.programmers.co.kr/learn/courses/30/lessons/42860?language=swift

import Foundation

func solution(_ name:String) -> Int {
    var answer: Int = 0
    var minMove: Int = name.count - 1
    var nextIndex : Int = 0
    
    for (index, value) in name.enumerated(){
        answer += Int([value.asciiValue! - 65, 90 - value.asciiValue! + 1].min()!)
        
    }
    
    for i in 0..<name.count {
        if name[name.index(name.startIndex, offsetBy: i)] != "A" {
            var nextIndex = i + 1
            while nextIndex<name.count && name[name.index(name.startIndex, offsetBy: nextIndex)] == "A" {
                nextIndex += 1
            }
            let move = 2 *  i + name.count - nextIndex
            minMove = min(move, minMove)
        }
    }
    
    answer += minMove
    
    return answer
}
