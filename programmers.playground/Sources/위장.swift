// 위장
// 2023.03.14
// https://school.programmers.co.kr/learn/courses/30/lessons/42578

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var wearDic : [String:Int] = [:]
    var result: Int = 1
    
    //해시로 만들기 옷의 종류의 개수만 알면 되기 때문에 Int로 변환
    clothes.forEach{
        if wearDic[$0.last!] != nil{
            wearDic[$0.last!]! += 1
        } else {
            wearDic[$0.last!] = 1
        }
    }
    
    for i in wearDic.values{
        result *= i + 1 // 입지 않는 경우까지 계산을 위해 + 1
    }
    
    return result - 1 // 아예 입지 않는 경우 제외
}
