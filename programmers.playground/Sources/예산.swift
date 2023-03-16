// 예산
// 2023.03.16
// https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var costSum = 0
    var dArray = d.sorted{$0 < $1}
    
    for i in dArray{
        if budget - costSum >= i{
            costSum += i
            result += 1
        }
    }
    
    
    return result
}
