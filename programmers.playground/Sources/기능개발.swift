// 기능 개발
// https://school.programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresse = progresses // Swift에서는 인자로 받는 값이 고정 형인 let으로 넘어오기 때문에 값을 복사
    var speed = speeds
    var day = 0
    var distri = 0

    var answer: [Int] = []
    
    while(!progresse.isEmpty){
        distri = 0

        // front 값이 100 이상(배포시점)이 될때까지 day를 증가
        while progresse.first! + (speed.first! * day) < 100{
            day += 1
        }
        
        // 연속된 값 중 100이 넘는 것을 count하고 큐에서 제거(Dequeue)
        for i in 0..<progresse.count{
            if progresse.first! + (speed.first! * day) < 100{
                break
            } else {
                distri += 1
                progresse.removeFirst()
                speed.removeFirst()
            }
        }
        
        answer.append(distri)
    }
    
    return answer
}

/*
해설
배포하는 시기는 front의 값이 100을 넘는 시점이므로
front의 값만을 체크하여 100이넘는지 check
front의 값이 100을 넘을때까지 day값을 증가시키고 그 시점에 연속된 값 중 100이 넘는것을 체크 후 제외
그 개수를 센 후 리스트에 추가
*/
