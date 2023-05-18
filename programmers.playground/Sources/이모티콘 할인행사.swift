//// 이모티콘 할인 행사
//// https://school.programmers.co.kr/learn/courses/30/lessons/150368
//// 04.12 생일 기념
//
//import Foundation
//
//func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
//    var cases: [[Int]] = permutation([10,20,30,40], emoticons.count)
//    var sum: Int, user:Int, userMax: Int, moneyMax: Int, result: Int = 0
//    
//    moneyMax = 0
//    userMax = 0
//    for i in cases{
//        user = 0
//        
//        for userInfo in users
//        {
//            sum = 0
//            result = 0
//            
//            for j in 0..<i.count{
//                if userInfo[0] <= i[j]{ //할인율이 더 높은 경우 이모티콘 구매
//                    sum += emoticons[j] * (100 - i[j]) / 100
//                    // print("\(j),\(userInfo)번유저 : \(userInfo[0]) <= \(i[j]), \(sum), i : \(i)")
//                    
//                }
//                if sum >= userInfo[1]{
//                    user += 1
//                    sum = 0
//                    break
//                }
//            }
//        }
//        
//        if userMax < user{
//            userMax = user
//        }
//        else if userMax == user && moneyMax < sum{
//            moneyMax = sum
//            print("\(userMax)명이 구독, 판매비용 : \(sum),할인 케이스 : \(i)")
//        }
//    }
//    return [userMax, moneyMax]
//}
//
//func permutation(_ array: [Int], _ n: Int) -> [[Int]]{
//    var result: [[Int]] = []
//    
//    func cycle(_ cycleArray: [Int], _ index: Int){
//        if index == n{
//            result.append(cycleArray)
//            return
//        }
//        
//        for i in array{
//            cycle(cycleArray + [i], index + 1)
//        }
//    }
//    
//    cycle([],0)
//    
//    return result
//}
//
///*
//모든 경우의 수 계산
//Swift는 조합 계산 불가능
//
//
//*/
