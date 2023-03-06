// 택배 배달과 수거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/150369

import Foundation

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    var answer = 0
    var deliver = deliveries.reversed()
    var pickup = pickups.reversed()
    var deliverSum = 0
    var pickSum = 0
    
    for i in 0..<n{
        deliverSum += deliver[deliver.index(deliver.startIndex, offsetBy: i)]
        pickSum += pickup[pickup.index(pickup.startIndex, offsetBy: i)]
        
        while deliverSum > 0 || pickSum > 0{
            deliverSum -= cap
            pickSum -= cap
            answer += (n - i) * 2
        }
    }
    
    
    return Int64(answer)
}

/*
각 집을 순차적으로 정리했지만 타임아웃 문제 발생

*/
