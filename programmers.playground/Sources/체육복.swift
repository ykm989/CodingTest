// 체육복
// 2023.03.15
// https://school.programmers.co.kr/learn/courses/30/lessons/42862

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let reserveArray = reserve.filter { !lost.contains($0) }
    let lostArray = lost.filter { !reserve.contains($0) }
    var lostPeople = lostArray.count
    
    
    
    for i in reserveArray{
        
        if (lostArray.contains(i - 1) || lostArray.contains(i + 1)) && lostPeople > 0{
            lostPeople -= 1
        }
        
    }
    
    return n - lostPeople
}

